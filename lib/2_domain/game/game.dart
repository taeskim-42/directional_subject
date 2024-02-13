import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

enum GameState {
  notStarted,
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

  factory Game.init() {
    // Player, Board, GameState의 기본 인스턴스를 사용하여 Game을 초기화합니다.
    return Game(
      player1: Player.init().copyWith(
          mark: Mark(mark: PlayerMark.cross, markColor: PlayerColor.blue)),
      player2: Player.init().copyWith(
          mark: Mark(mark: PlayerMark.circle, markColor: PlayerColor.red)),
      board: Board.init(3, 3), // Board의 기본 인스턴스
      currentPlayer: Player
          .init(), // 현재 플레이어의 기본 인스턴스, 필요에 따라 player1 또는 player2를 할당할 수 있습니다.
      state: GameState.notStarted, // 게임 상태를 '시작 전'으로 설정
    );
  }
}
