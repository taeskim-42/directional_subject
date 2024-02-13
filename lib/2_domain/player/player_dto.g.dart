// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerDTOImpl _$$PlayerDTOImplFromJson(Map<String, dynamic> json) =>
    _$PlayerDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      mark: json['mark'] as String,
      markColor: json['markColor'] as String,
    );

Map<String, dynamic> _$$PlayerDTOImplToJson(_$PlayerDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mark': instance.mark,
      'markColor': instance.markColor,
    };
