import 'package:cryptocash/db/models/wallet_coin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet.g.dart';

@JsonSerializable(explicitToJson: true)
class Wallet {
  String id;

  @JsonKey(name: 'user_id')
  String userId;

  String address;

  @JsonKey(name: 'WalletCoins')
  List<WalletCoin> walletCoins;

  Wallet(
      {required this.id,
      required this.userId,
      required this.walletCoins,
      required this.address});

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}
