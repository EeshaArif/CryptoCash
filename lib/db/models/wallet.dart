import 'package:json_annotation/json_annotation.dart';

part 'wallet.g.dart';

@JsonSerializable()
class Wallet {
  String id;

  @JsonKey(name: 'user_id')
  String userId;

  @JsonKey(name: 'private_key')
  String privateKey;

  String address;

  Wallet(
      {required this.id,
      required this.userId,
      required this.privateKey,
      required this.address});

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}
