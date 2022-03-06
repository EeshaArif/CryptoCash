// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return Wallet(
    id: json['id'] as String,
    userId: json['user_id'] as String,
    walletCoins: (json['WalletCoins'] as List<dynamic>)
        .map((e) => WalletCoin.fromJson(e as Map<String, dynamic>))
        .toList(),
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'address': instance.address,
      'WalletCoins': instance.walletCoins.map((e) => e.toJson()).toList(),
    };
