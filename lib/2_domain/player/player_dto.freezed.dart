// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerDTO _$PlayerDTOFromJson(Map<String, dynamic> json) {
  return _PlayerDTO.fromJson(json);
}

/// @nodoc
mixin _$PlayerDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mark => throw _privateConstructorUsedError; // 열거형은 문자열로 처리
  String get markColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerDTOCopyWith<PlayerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDTOCopyWith<$Res> {
  factory $PlayerDTOCopyWith(PlayerDTO value, $Res Function(PlayerDTO) then) =
      _$PlayerDTOCopyWithImpl<$Res, PlayerDTO>;
  @useResult
  $Res call({String id, String name, String mark, String markColor});
}

/// @nodoc
class _$PlayerDTOCopyWithImpl<$Res, $Val extends PlayerDTO>
    implements $PlayerDTOCopyWith<$Res> {
  _$PlayerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mark = null,
    Object? markColor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String,
      markColor: null == markColor
          ? _value.markColor
          : markColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerDTOImplCopyWith<$Res>
    implements $PlayerDTOCopyWith<$Res> {
  factory _$$PlayerDTOImplCopyWith(
          _$PlayerDTOImpl value, $Res Function(_$PlayerDTOImpl) then) =
      __$$PlayerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String mark, String markColor});
}

/// @nodoc
class __$$PlayerDTOImplCopyWithImpl<$Res>
    extends _$PlayerDTOCopyWithImpl<$Res, _$PlayerDTOImpl>
    implements _$$PlayerDTOImplCopyWith<$Res> {
  __$$PlayerDTOImplCopyWithImpl(
      _$PlayerDTOImpl _value, $Res Function(_$PlayerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mark = null,
    Object? markColor = null,
  }) {
    return _then(_$PlayerDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String,
      markColor: null == markColor
          ? _value.markColor
          : markColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerDTOImpl with DiagnosticableTreeMixin implements _PlayerDTO {
  const _$PlayerDTOImpl(
      {required this.id,
      required this.name,
      required this.mark,
      required this.markColor});

  factory _$PlayerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String mark;
// 열거형은 문자열로 처리
  @override
  final String markColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerDTO(id: $id, name: $name, mark: $mark, markColor: $markColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('mark', mark))
      ..add(DiagnosticsProperty('markColor', markColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.markColor, markColor) ||
                other.markColor == markColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mark, markColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDTOImplCopyWith<_$PlayerDTOImpl> get copyWith =>
      __$$PlayerDTOImplCopyWithImpl<_$PlayerDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerDTOImplToJson(
      this,
    );
  }
}

abstract class _PlayerDTO implements PlayerDTO {
  const factory _PlayerDTO(
      {required final String id,
      required final String name,
      required final String mark,
      required final String markColor}) = _$PlayerDTOImpl;

  factory _PlayerDTO.fromJson(Map<String, dynamic> json) =
      _$PlayerDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get mark;
  @override // 열거형은 문자열로 처리
  String get markColor;
  @override
  @JsonKey(ignore: true)
  _$$PlayerDTOImplCopyWith<_$PlayerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
