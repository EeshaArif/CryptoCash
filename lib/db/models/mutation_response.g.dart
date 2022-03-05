// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MutationResponse _$MutationResponseFromJson(Map<String, dynamic> json) {
  return MutationResponse(
    affectedRows: json['affected_rows'] as int,
  );
}

Map<String, dynamic> _$MutationResponseToJson(MutationResponse instance) =>
    <String, dynamic>{
      'affected_rows': instance.affectedRows,
    };
