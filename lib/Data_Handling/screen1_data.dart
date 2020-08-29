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
