import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

enum GameState {
  inProgress,
  player1Wins,
  player2Wins,
  draw,
}

@freezed
class Game with _$Game {
  const factory Game({
    required Player player1,
    required Player player2,
    required Board board,
    required Player currentPlayer,
    required GameState state,
  }) = _Game;
}
