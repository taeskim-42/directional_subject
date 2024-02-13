import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_record.freezed.dart';

@freezed
class GameRecord with _$GameRecord {
  const factory GameRecord({
    required DateTime endTime,
    required Player winner,
    required Player player1,
    required Player player2,
    required Board board,
    required GameResult result,
  }) = _GameRecord;
}

enum GameResult {
  victory,
  defeat,
  draw,
}
