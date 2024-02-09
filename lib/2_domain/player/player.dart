import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required String name,
    required PlayerMark mark,
    required PlayerColor markColor,
  }) = _Player;

  factory Player.init() {
    return const Player(
        id: '', name: '', mark: PlayerMark.cross, markColor: PlayerColor.black);
  }
}

extension PlayerExtension on Player {
  int get undoCount => 3;
}

// 가능한 마크를 정의하는 enum
enum PlayerMark { circle, cross, square, triangle }

// 가능한 색상을 정의하는 enum
enum PlayerColor { blue, red, green, black }

// PlayerMark enum을 위한 확장 메서드
extension PlayerMarkExtension on PlayerMark {
  String get symbol {
    switch (this) {
      case PlayerMark.circle:
        return "O";
      case PlayerMark.cross:
        return "X";
      case PlayerMark.square:
        return "■";
      case PlayerMark.triangle:
        return "▲";
      default:
        return "";
    }
  }
}

// PlayerColor enum을 위한 확장 메서드
extension PlayerColorExtension on PlayerColor {
  Color get color {
    switch (this) {
      case PlayerColor.blue:
        return Colors.blue;
      case PlayerColor.red:
        return Colors.red;
      case PlayerColor.green:
        return Colors.green;
      case PlayerColor.black:
        return Colors.black;
      default:
        return Colors.black;
    }
  }
}
