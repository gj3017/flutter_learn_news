import 'package:flutter/cupertino.dart';

class UserLoginRequestEntity {
  UserLoginRequestEntity({
    this.email,
    this.password,
  });

  @required String email;
  @required String password;

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) => UserLoginRequestEntity(
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };
}


class UserLoginResponseEntity {
  UserLoginResponseEntity({
    this.accessToken,
    this.displayName,
    this.channels,
  });

  @required String accessToken;
  String displayName;
  String channels;

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) => UserLoginResponseEntity(
    accessToken: json["access_token"],
    displayName: json["display_name"],
    channels: json["channels"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "display_name": displayName,
    "channels": channels,
  };
}
