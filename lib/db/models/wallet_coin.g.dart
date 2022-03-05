// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletCoin _$WalletCoinFromJson(Map<String, dynamic> json) {
  return WalletCoin(
    id: json['id'] as String,
    walletId: json['wallet_id'] as String,
    coinId: json['coin_id'] as String,
    balance: (json['balance'] as num).toDouble(),
  );
}

Map<String, dynamic> _$WalletCoinToJson(WalletCoin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wallet_id': instance.walletId,
      'coin_id': instance.coinId,
      'balance': instance.balance,
    };
