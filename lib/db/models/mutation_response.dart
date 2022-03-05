import 'package:json_annotation/json_annotation.dart';

part 'mutation_response.g.dart';

@JsonSerializable()
class MutationResponse {
  @JsonKey(name: 'affected_rows')
  int affectedRows;

  MutationResponse({required this.affectedRows});

  factory MutationResponse.fromJson(Map<String, dynamic> json) =>
      _$MutationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MutationResponseToJson(this);
}
