import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_onboarding_ui/screens/profilescreen.dart';

const url = 'https://seriapp.herokuapp.com/api/customer/auth-user/';
const url1 = 'https://seriapp.herokuapp.com/api/customer/auth-otp/';

class Networking {
  Future<int> otpsent(String phoneNumber) async {
    var answeredResponse = await http.post(
        '${'https://seriapp.herokuapp.com/api/customer/auth-user/'}',
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({"phone_number": phoneNumber}));
    print(answeredResponse.statusCode);
    if (answeredResponse.statusCode == 200) {
      return answeredResponse.statusCode;
    } else {
      print('backend error');
      return null;
    }
  }

  Future<int> otpVerification(String phoneNumber, String otp) async {
    var answeredResponse = await http.post(
        '${'https://seriapp.herokuapp.com/api/customer/auth-otp/'}',
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({"phone_number": phoneNumber, "otp_code": otp}));

    print(answeredResponse.statusCode);
    if (answeredResponse.statusCode == 200) {
      print(answeredResponse.body);
      return answeredResponse.statusCode;
    } else {
      print('backend error');
      return null;
    }
  }

  Future<int> login(String phoneNumber, token) async {
    var answeredResponse = await http.post(
        '${'https://seriapp.herokuapp.com/api/customer/auth-otp/'}',
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          "status": "success",
          "token": token,
          "message": "Success user Authentication",
          "phone_number": phoneNumber
        }));

    print(answeredResponse.statusCode);
    if (answeredResponse.statusCode == 200) {
      print(answeredResponse.body);
      return answeredResponse.statusCode;
    } else {
      print('backend error');
      return null;
    }
  }
}
