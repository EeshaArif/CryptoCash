import 'package:json_annotation/json_annotation.dart';

part 'coin.g.dart';

@JsonSerializable()
class Coin {
  String id;

  @JsonKey(name: 'short_name')
  String shortName;
  String name;

  @JsonKey(name: 'exchange_to_vpkr')
  String exchangeTovPKR;

  Coin(
      {required this.id,
      required this.shortName,
      required this.name,
      required this.exchangeTovPKR});

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);
}
