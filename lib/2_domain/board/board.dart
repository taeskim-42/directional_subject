import 'dart:math';
import 'package:directional_subject/2_domain/player/player.dart';

class Board {
  final int size;
  final List<List<Mark>> cells;
  final int winCondition;

  Board({
    required this.size,
    required this.cells,
    required this.winCondition,
  });

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

  factory Board.fromJson(Map<String, dynamic> json) {
    return Board(
      size: json['size'] as int,
      cells: (json['cells'] as List)
          .map((row) =>
              (row as List).map((cell) => Mark.fromJson(cell)).toList())
          .toList(),
      winCondition: json['winCondition'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
        "size": size,
        "cells": cells,
        "winCondition": winCondition,
      };
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

  bool checkDraw() {
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        // Mark.empty는 빈 칸을 나타내는 값을 가정
        if (cells[i][j].mark == PlayerMark.empty) {
          return false; // 빈 칸이 있으면 아직 무승부가 아님
        }
      }
    }
    // 모든 칸이 채워져 있고, checkWin이 false라면 무승부
    return true;
  }
}
