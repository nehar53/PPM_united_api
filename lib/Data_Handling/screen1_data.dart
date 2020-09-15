import 'dart:convert';

import 'package:flutter_onboarding_ui/Networking/user_provider.dart';


//Confirm confirmFromJson(String str) => Confirm.fromJson(json.decode(str));

//String confirmToJson(Confirm data) => json.encode(data.toJson());

class Confirm {
  Confirm({
    this.phoneNumber,
    this.otpCode,
  });

  String phoneNumber;
  String otpCode;

   Confirm.fromJson(Map<String, dynamic> json) {
     phoneNumber = json["phone_number"];
     otpCode = json["otp_code"];
   }

  Map<String, dynamic> toJson()  {
    final Map<String, dynamic> data = new Map<String, dynamic>();
        data["phone_number"]=this.phoneNumber;
    data["otp_code"]=this.otpCode;
return data;
      }
}

//User userFromJson(String str) => User.fromJson(json.decode(str));

//String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.status,
    this.token,
    this.message,
    this.phoneNumber,
  });

  String status;
  String token;
  String message;
  Confirm phoneNumber;

   User.fromJson(Map<String, dynamic> json) {
     status = json["status"];
     token = json["token"];
     message = json["message"];
     phoneNumber = json["phone_number"] != null
         ? new Confirm.fromJson(json['phone_number'])
         : null;
   }



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["status"] = this.status;
    data["token"] = this.token;
    data[ "message"] = this.message;
    if (this.phoneNumber != null) {
      data[ "phone_number"] = this.phoneNumber.toJson();
    }
    return data;
  }
}
