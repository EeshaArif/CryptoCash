import 'package:json_annotation/json_annotation.dart';

part 'wallet_coin.g.dart';

@JsonSerializable()
class WalletCoin {
  String id;

  @JsonKey(name: 'wallet_id')
  String walletId;

  @JsonKey(name: 'coin_id')
  String coinId;

  double balance;

  WalletCoin(
      {required this.id,
      required this.walletId,
      required this.coinId,
      required this.balance});

  factory WalletCoin.fromJson(Map<String, dynamic> json) =>
      _$WalletCoinFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCoinToJson(this);
}
