// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLoginResponse _$AuthLoginResponseFromJson(Map<String, dynamic> json) {
  return AuthLoginResponse(
    accessToken: json['accessToken'] as String,
    message: json['message'] as String,
    statusCode: json['statusCode'] as int,
  );
}

Map<String, dynamic> _$AuthLoginResponseToJson(AuthLoginResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
