import 'package:freezed_annotation/freezed_annotation.dart';

part 'move.freezed.dart';

@freezed
class Move with _$Move {
  const factory Move({
    required int row,
    required int column,
  }) = _Move;
}
