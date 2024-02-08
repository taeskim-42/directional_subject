// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameRecord {
  DateTime get endTime => throw _privateConstructorUsedError;
  Player get winner => throw _privateConstructorUsedError;
  Player get player1 => throw _privateConstructorUsedError;
  Player get player2 => throw _privateConstructorUsedError;
  Board get board => throw _privateConstructorUsedError;
  GameResult get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameRecordCopyWith<GameRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRecordCopyWith<$Res> {
  factory $GameRecordCopyWith(
          GameRecord value, $Res Function(GameRecord) then) =
      _$GameRecordCopyWithImpl<$Res, GameRecord>;
  @useResult
  $Res call(
      {DateTime endTime,
      Player winner,
      Player player1,
      Player player2,
      Board board,
      GameResult result});

  $PlayerCopyWith<$Res> get winner;
  $PlayerCopyWith<$Res> get player1;
  $PlayerCopyWith<$Res> get player2;
  $BoardCopyWith<$Res> get board;
}

/// @nodoc
class _$GameRecordCopyWithImpl<$Res, $Val extends GameRecord>
    implements $GameRecordCopyWith<$Res> {
  _$GameRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endTime = null,
    Object? winner = null,
    Object? player1 = null,
    Object? player2 = null,
    Object? board = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as Player,
      player1: null == player1
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as Player,
      player2: null == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as Player,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GameResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get winner {
    return $PlayerCopyWith<$Res>(_value.winner, (value) {
      return _then(_value.copyWith(winner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player1 {
    return $PlayerCopyWith<$Res>(_value.player1, (value) {
      return _then(_value.copyWith(player1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player2 {
    return $PlayerCopyWith<$Res>(_value.player2, (value) {
      return _then(_value.copyWith(player2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardCopyWith<$Res> get board {
    return $BoardCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameRecordImplCopyWith<$Res>
    implements $GameRecordCopyWith<$Res> {
  factory _$$GameRecordImplCopyWith(
          _$GameRecordImpl value, $Res Function(_$GameRecordImpl) then) =
      __$$GameRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime endTime,
      Player winner,
      Player player1,
      Player player2,
      Board board,
      GameResult result});

  @override
  $PlayerCopyWith<$Res> get winner;
  @override
  $PlayerCopyWith<$Res> get player1;
  @override
  $PlayerCopyWith<$Res> get player2;
  @override
  $BoardCopyWith<$Res> get board;
}

/// @nodoc
class __$$GameRecordImplCopyWithImpl<$Res>
    extends _$GameRecordCopyWithImpl<$Res, _$GameRecordImpl>
    implements _$$GameRecordImplCopyWith<$Res> {
  __$$GameRecordImplCopyWithImpl(
      _$GameRecordImpl _value, $Res Function(_$GameRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endTime = null,
    Object? winner = null,
    Object? player1 = null,
    Object? player2 = null,
    Object? board = null,
    Object? result = null,
  }) {
    return _then(_$GameRecordImpl(
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as Player,
      player1: null == player1
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as Player,
      player2: null == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as Player,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GameResult,
    ));
  }
}

/// @nodoc

class _$GameRecordImpl implements _GameRecord {
  const _$GameRecordImpl(
      {required this.endTime,
      required this.winner,
      required this.player1,
      required this.player2,
      required this.board,
      required this.result});

  @override
  final DateTime endTime;
  @override
  final Player winner;
  @override
  final Player player1;
  @override
  final Player player2;
  @override
  final Board board;
  @override
  final GameResult result;

  @override
  String toString() {
    return 'GameRecord(endTime: $endTime, winner: $winner, player1: $player1, player2: $player2, board: $board, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRecordImpl &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.player1, player1) || other.player1 == player1) &&
            (identical(other.player2, player2) || other.player2 == player2) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, endTime, winner, player1, player2, board, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRecordImplCopyWith<_$GameRecordImpl> get copyWith =>
      __$$GameRecordImplCopyWithImpl<_$GameRecordImpl>(this, _$identity);
}

abstract class _GameRecord implements GameRecord {
  const factory _GameRecord(
      {required final DateTime endTime,
      required final Player winner,
      required final Player player1,
      required final Player player2,
      required final Board board,
      required final GameResult result}) = _$GameRecordImpl;

  @override
  DateTime get endTime;
  @override
  Player get winner;
  @override
  Player get player1;
  @override
  Player get player2;
  @override
  Board get board;
  @override
  GameResult get result;
  @override
  @JsonKey(ignore: true)
  _$$GameRecordImplCopyWith<_$GameRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
