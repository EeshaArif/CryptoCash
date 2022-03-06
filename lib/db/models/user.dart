import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(includeIfNull: false)
  String? id;

  String name;

  @JsonKey(name: 'phone_number')
  String phoneNumber;

  @JsonKey(includeIfNull: false)
  String? password;

  String email;

  User(
      {this.id,
      required this.name,
      required this.phoneNumber,
      required this.email,
      this.password});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
