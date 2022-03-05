// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return Wallet(
    id: json['id'] as String,
    userId: json['user_id'] as String,
    privateKey: json['private_key'] as String,
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'private_key': instance.privateKey,
      'address': instance.address,
    };
