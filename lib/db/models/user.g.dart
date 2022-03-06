// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String?,
    name: json['name'] as String,
    phoneNumber: json['phone_number'] as String,
    email: json['email'] as String,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['phone_number'] = instance.phoneNumber;
  writeNotNull('password', instance.password);
  val['email'] = instance.email;
  return val;
}
