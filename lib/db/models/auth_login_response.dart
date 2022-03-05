import 'package:json_annotation/json_annotation.dart';

part 'auth_login_response.g.dart';

@JsonSerializable()
class AuthLoginResponse {
  String accessToken;
  String message;
  int statusCode;

  AuthLoginResponse(
      {required this.accessToken,
      required this.message,
      required this.statusCode});

  factory AuthLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginResponseToJson(this);
}
