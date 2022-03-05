// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return Coin(
    id: json['id'] as String,
    shortName: json['short_name'] as String,
    name: json['name'] as String,
    exchangeTovPKR: json['exchange_to_vpkr'] as String,
  );
}

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'id': instance.id,
      'short_name': instance.shortName,
      'name': instance.name,
      'exchange_to_vpkr': instance.exchangeTovPKR,
    };
