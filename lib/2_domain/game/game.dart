import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

enum GameState {
  inProgress,
  player1Wins,
  player2Wins,
  draw,
  notStarted,
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

  factory Game.init() {
    // Player, Board, GameState의 기본 인스턴스를 사용하여 Game을 초기화합니다.
    return Game(
      player1: Player.init(), // Player1의 기본 인스턴스
      player2: Player.init(), // Player2의 기본 인스턴스
      board: Board.init(3, 3), // Board의 기본 인스턴스
      currentPlayer: Player
          .init(), // 현재 플레이어의 기본 인스턴스, 필요에 따라 player1 또는 player2를 할당할 수 있습니다.
      state: GameState.notStarted, // 게임 상태를 '시작 전'으로 설정
    );
  }
}
