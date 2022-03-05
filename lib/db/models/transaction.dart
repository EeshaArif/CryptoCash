import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  String? id;

  String fromWalletCoinId;
  String toWalletCoinId;

  DateTime? createdAt;
  DateTime? completedAt;

  String? hash;

  Transaction(
      {required this.fromWalletCoinId,
      required this.toWalletCoinId,
      this.id,
      this.createdAt,
      this.completedAt,
      this.hash});

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
