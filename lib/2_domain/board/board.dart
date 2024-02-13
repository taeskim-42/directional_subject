import 'dart:math';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required int size,
    required List<List<Mark>> cells,
    required int winCondition,
  }) = _Board;

  factory Board.init(int size, [int? winCondition]) {
    final effectiveWinCondition = min(winCondition ?? size, size);
    final cells = List.generate(
      size,
      (_) => List.filled(
        size,
        Mark(
          mark: PlayerMark.empty,
          markColor: PlayerColor.black,
        ),
      ),
    );
    return Board(size: size, cells: cells, winCondition: effectiveWinCondition);
  }
}

extension BoardExtension on Board {
  Board placeMark(int row, int col, Mark mark) {
    final newCells = List.of(cells, growable: false);
    newCells[row] = List.of(newCells[row]);
    newCells[row][col] = mark;
    return Board(size: size, cells: newCells, winCondition: winCondition);
  }

  Board reset() {
    return Board.init(size, winCondition);
  }

  bool checkWin(Mark mark) {
    // 행과 열 검사
    for (int i = 0; i < size; i++) {
      int rowCount = 0;
      int colCount = 0;
      for (int j = 0; j < size; j++) {
        if (cells[i][j] == mark) rowCount++;
        if (cells[j][i] == mark) colCount++;
      }
      if (rowCount == winCondition || colCount == winCondition) return true;
    }

    // 대각선 검사
    for (int startRow = 0; startRow <= size - winCondition; startRow++) {
      for (int startCol = 0; startCol <= size - winCondition; startCol++) {
        int diag1Count = 0;
        int diag2Count = 0;
        for (int i = 0; i < winCondition; i++) {
          if (cells[startRow + i][startCol + i] == mark) diag1Count++;
          if (cells[startRow + i][startCol + winCondition - 1 - i] == mark) {
            diag2Count++;
          }
        }
        if (diag1Count == winCondition || diag2Count == winCondition) {
          return true;
        }
      }
    }

    // 모든 검사에서 승리 조건을 만족하지 못한 경우
    return false;
  }
}
