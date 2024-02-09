import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:flutter/material.dart';
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

  factory GameRecord.victory({
    required DateTime endTime,
    required Player winner,
    required Player player1,
    required Player player2,
    required Board board,
  }) =>
      GameRecord(
        endTime: endTime,
        winner: winner,
        player1: player1,
        player2: player2,
        board: board,
        result: GameResult.victory,
      );

  factory GameRecord.defeat({
    required DateTime endTime,
    required Player winner,
    required Player player1,
    required Player player2,
    required Board board,
  }) =>
      GameRecord(
        endTime: endTime,
        winner: winner,
        player1: player1,
        player2: player2,
        board: board,
        result: GameResult.defeat,
      );

  factory GameRecord.draw({
    required DateTime endTime,
    required Player player1,
    required Player player2,
    required Board board,
  }) =>
      GameRecord(
        endTime: endTime,
        winner: Player.init(),
        player1: player1,
        player2: player2,
        board: board,
        result: GameResult.draw,
      );
}

enum GameResult {
  victory,
  defeat,
  draw,
}
