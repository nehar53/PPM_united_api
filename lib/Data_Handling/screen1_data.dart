import 'dart:convert';

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

String customerToJson(Customer data) => json.encode(data.toJson());

class Customer {
  //var userDetails;

  Customer({
    this.phoneNumber,
  });

  String phoneNumber;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
      };
}

Confirm confirmFromJson(String str) => Confirm.fromJson(json.decode(str));

String confirmToJson(Confirm data) => json.encode(data.toJson());

class Confirm {
  Confirm({
    this.phoneNumber,
    this.otpCode,
  });

  String phoneNumber;
  String otpCode;

  factory Confirm.fromJson(Map<String, dynamic> json) => Confirm(
        phoneNumber: json["phone_number"],
        otpCode: json["otp_code"],
      );

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "otp_code": otpCode,
      };
}

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

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
  String phoneNumber;

  factory User.fromJson(Map<String, dynamic> json) => User(
        status: json["status"],
        token: json["token"],
        message: json["message"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "token": token,
        "message": message,
        "phone_number": phoneNumber,
      };
}
