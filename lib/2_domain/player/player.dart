import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required String name,
    required Mark mark,
  }) = _Player;

  factory Player.init() {
    return Player(
        id: '',
        name: '',
        mark: Mark(
          mark: PlayerMark.cross,
          markColor: PlayerColor.black,
        ));
  }
}

class Mark {
  final PlayerMark mark;
  final PlayerColor markColor;

  Mark({required this.mark, required this.markColor});

  factory Mark.fromJson(Map<String, dynamic> json) {
    return Mark(
      mark: PlayerMark.values[json['mark'] as int],
      markColor: PlayerColor.values[json['markColor'] as int],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mark': mark.index,
      'markColor': markColor.index,
    };
  }
}

extension PlayerExtension on Player {
  int get undoCount => 3;
}

// 가능한 마크를 정의하는 enum
enum PlayerMark { circle, cross, square, triangle, empty }

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
