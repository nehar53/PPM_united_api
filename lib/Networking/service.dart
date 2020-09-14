import 'dart:io';

import 'package:flutter_app/Data_Handling/screen1_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Networking {
  var token;
  User user = User();
  Future<int> otpsent(String phoneNumber) async {
    var answeredResponse = await http.post(
        '${'https://seriapp.herokuapp.com/api/customer/auth-user/'}',
        // SharedPreferences prefs = await SharedPreferences.getInstance();
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({"phone_number": phoneNumber}));
    print(answeredResponse.statusCode);
    if (answeredResponse.statusCode == 200) {
      return answeredResponse.statusCode ;
    } else {
      print('backend error');
      return null;
    }
  }

  Future<User> otpVerification(String phoneNumber, String otp) async {
   // final sharedPreferences = await SharedPreferences.getInstance();

    final answeredResponse = await http.post(
        '${'https://seriapp.herokuapp.com/api/customer/auth-otp/'}',
        headers: {
          'Content-Type': 'application/json',

        },
        body: json.encode({"phone_number": phoneNumber, "otp_code": otp}));

    print(answeredResponse.statusCode);
    if (answeredResponse.statusCode == 200) {
      print(answeredResponse.body);
      return User.fromJson(json.decode(answeredResponse.body)) ;
    } else {
      print('login successfully');
      return null;
    }
  }





}
