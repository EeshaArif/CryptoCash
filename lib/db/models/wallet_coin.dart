import 'package:cryptocash/db/models/coin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_coin.g.dart';

@JsonSerializable(explicitToJson: true)
class WalletCoin {
  String id;

  @JsonKey(name: 'wallet_id')
  String walletId;

  @JsonKey(name: 'coin_id')
  String coinId;

  double balance;

  @JsonKey(name: 'Coin')
  Coin coin;

  WalletCoin(
      {required this.id,
      required this.walletId,
      required this.coinId,
      required this.balance,
      required this.coin});

  factory WalletCoin.fromJson(Map<String, dynamic> json) =>
      _$WalletCoinFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCoinToJson(this);
}
