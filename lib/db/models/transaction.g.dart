// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction(
    fromWalletCoinId: json['fromWalletCoinId'] as String,
    toWalletCoinId: json['toWalletCoinId'] as String,
    id: json['id'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    completedAt: json['completedAt'] == null
        ? null
        : DateTime.parse(json['completedAt'] as String),
    hash: json['hash'] as String?,
  );
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromWalletCoinId': instance.fromWalletCoinId,
      'toWalletCoinId': instance.toWalletCoinId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'hash': instance.hash,
    };
