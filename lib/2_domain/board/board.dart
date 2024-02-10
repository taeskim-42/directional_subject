import 'dart:math';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required int size,
    required List<List<PlayerMark>> cells,
    required int winCondition,
  }) = _Board;

  factory Board.init(int size, [int? winCondition]) {
    final effectiveWinCondition = min(winCondition ?? size, size);
    final cells =
        List.generate(size, (_) => List.filled(size, PlayerMark.empty));
    return Board(size: size, cells: cells, winCondition: effectiveWinCondition);
  }
}

extension BoardExtension on Board {
  Board placeMark(int row, int col, PlayerMark mark) {
    final newCells = List.of(cells, growable: false);
    newCells[row] = List.of(newCells[row]);
    newCells[row][col] = mark;
    return Board(size: size, cells: newCells, winCondition: winCondition);
  }

  Board reset() {
    return Board.init(size, winCondition);
  }

  bool checkWin(PlayerMark mark) {
    for (int i = 0; i < size; i++) {
      int rowCount = 0;
      int colCount = 0;
      for (int j = 0; j < size; j++) {
        if (cells[i][j] == mark) rowCount++;
        if (cells[j][i] == mark) colCount++;
      }
      if (rowCount == winCondition || colCount == winCondition) return true;
    }

    int diag1Count = 0;
    int diag2Count = 0;
    for (int i = 0; i < size; i++) {
      if (cells[i][i] == mark) diag1Count++;
      if (cells[i][size - 1 - i] == mark) diag2Count++;
    }
    return diag1Count == winCondition || diag2Count == winCondition;
  }
}
