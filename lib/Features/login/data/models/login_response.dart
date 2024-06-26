import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  Data? data;
  bool? status;
  int? code;

  LoginResponse({this.message, this.data, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class Data {
  String? token;
  @JsonKey(name: 'username')
  String? username;

  Data({this.token, this.username});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
