import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required String name,
    required String mark,
    required Color markColor,
  }) = _Player;
}

extension PlayerExtension on Player {
  int get undoCount => 3;
}
