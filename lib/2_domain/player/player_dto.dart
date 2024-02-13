import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

@freezed
class PlayerDTO with _$PlayerDTO {
  const factory PlayerDTO({
    required String id,
    required String name,
    required String mark, // 열거형은 문자열로 처리
    required String markColor, // 열거형은 문자열로 처리
  }) = _PlayerDTO;

  factory PlayerDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayerDTOFromJson(json);
}
