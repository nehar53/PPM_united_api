import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/Data_Handling/screen1_data.dart';
import 'package:flutter_onboarding_ui/Networking/service.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Status { Authenticated, Authenticating, Unauthenticated }

class UserProvider with ChangeNotifier {
  Status get status => _status;
  Status _status = Status.Unauthenticated;
  String isAuth;
  User user = User();
  String token;
  String phoneNumber;
  String otp;
  Networking network = Networking();
  UserProvider() {
    getUserToken();
    getUserphoneNumber();
    getotp();
  }

  Future<bool> loginUser(String phoneNumber, otp) async {
    final result = await network.otpVerification(phoneNumber, otp);
    _status = Status.Authenticating;
    this.user = result ;
    //this.phoneNumber = user.phoneNumber.phoneNumber;
    //this.otp = user.phoneNumber.otpCode;
    //this.token = user.token;

    await setUserToken();

    //todo network validation

    _status = Status.Authenticated;

    print(result);

    notifyListeners();
  }

  setUserToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setString("phone_number", phoneNumber);
    await sharedPreferences.setString("token", token);

    await sharedPreferences.setString("otp_code", otp);

    notifyListeners();
  }

  getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    this.token =  prefs.getString("token");
    if (token == null) {
      _status = Status.Unauthenticated;
    } else {
      _status = Status.Authenticated;
    }
    notifyListeners();
    return this.token;
  }

  getUserphoneNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    this.phoneNumber = await prefs.getString("phone_number" ?? '');

    notifyListeners();

    return this.phoneNumber;
  }

  getotp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    this.otp = await prefs.getString("otp_code" ?? '');

    return otp;
  }

  deleteUserToken() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
    _status = Status.Unauthenticated;
    print('tokendeleted');
    notifyListeners();
  }

  Future signOut() async {
    deleteUserToken();

    notifyListeners();
    return Future.delayed(Duration.zero); // need for type return
  }
}
