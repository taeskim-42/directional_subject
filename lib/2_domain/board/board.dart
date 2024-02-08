import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required int size,
    required List<List<String>> cells,
  }) = _Board;

  factory Board.init(int size) {
    final cells = List.generate(size, (_) => List.filled(size, ''));
    return Board(size: size, cells: cells);
  }
}

extension BoardExtension on Board {
  Board placeMark(int row, int col, String mark) {
    final newCells = List.of(cells);
    newCells[row][col] = mark;
    return Board(size: size, cells: newCells);
  }

  Board reset() {
    return Board.init(size);
  }
}
