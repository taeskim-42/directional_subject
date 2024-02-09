import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required int size,
    required List<List<String>> cells,
    required int winCondition,
  }) = _Board;

  factory Board.init(int size, int winCondition) {
    int winCondition =
        size >= 2 ? size : 2; // size가 2 이상이면 size를, 아니면 최소값인 2를 사용
    winCondition = min(winCondition, size); // winCondition이 size를 초과하지 않도록 보장

    final cells = List.generate(size, (_) => List.filled(size, ''));
    return Board(size: size, cells: cells, winCondition: winCondition);
  }
}

extension BoardExtension on Board {
  Board placeMark(int row, int col, String mark) {
    final newCells = List.of(cells, growable: false);
    newCells[row] = List.of(newCells[row]);
    newCells[row][col] = mark;
    return Board(size: size, cells: newCells, winCondition: winCondition);
  }

  Board reset() {
    return Board.init(size, winCondition);
  }

  bool checkWin(String mark) {
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
    if (diag1Count == winCondition || diag2Count == winCondition) return true;

    return false;
  }
}
