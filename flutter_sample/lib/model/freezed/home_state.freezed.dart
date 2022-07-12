// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  int get count => throw _privateConstructorUsedError;
  List<String> get chipText => throw _privateConstructorUsedError;
  int get choiceIndex => throw _privateConstructorUsedError;
  String get selectData => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      List<String> chipText,
      int choiceIndex,
      String selectData,
      String time});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? chipText = freezed,
    Object? choiceIndex = freezed,
    Object? selectData = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      chipText: chipText == freezed
          ? _value.chipText
          : chipText // ignore: cast_nullable_to_non_nullable
              as List<String>,
      choiceIndex: choiceIndex == freezed
          ? _value.choiceIndex
          : choiceIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectData: selectData == freezed
          ? _value.selectData
          : selectData // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      List<String> chipText,
      int choiceIndex,
      String selectData,
      String time});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? count = freezed,
    Object? chipText = freezed,
    Object? choiceIndex = freezed,
    Object? selectData = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_HomeState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      chipText: chipText == freezed
          ? _value._chipText
          : chipText // ignore: cast_nullable_to_non_nullable
              as List<String>,
      choiceIndex: choiceIndex == freezed
          ? _value.choiceIndex
          : choiceIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectData: selectData == freezed
          ? _value.selectData
          : selectData // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {this.count = 0,
      final List<String> chipText = const [
        '北海道',
        '旅行',
        '札幌',
        '函館',
        '食べ物',
        '有名',
        '海鮮',
        'ラーメン'
      ],
      this.choiceIndex = 0,
      this.selectData = '北海道',
      this.time = '00:00:00'})
      : _chipText = chipText;

  @override
  @JsonKey()
  final int count;
  final List<String> _chipText;
  @override
  @JsonKey()
  List<String> get chipText {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chipText);
  }

  @override
  @JsonKey()
  final int choiceIndex;
  @override
  @JsonKey()
  final String selectData;
  @override
  @JsonKey()
  final String time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(count: $count, chipText: $chipText, choiceIndex: $choiceIndex, selectData: $selectData, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('chipText', chipText))
      ..add(DiagnosticsProperty('choiceIndex', choiceIndex))
      ..add(DiagnosticsProperty('selectData', selectData))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._chipText, _chipText) &&
            const DeepCollectionEquality()
                .equals(other.choiceIndex, choiceIndex) &&
            const DeepCollectionEquality()
                .equals(other.selectData, selectData) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_chipText),
      const DeepCollectionEquality().hash(choiceIndex),
      const DeepCollectionEquality().hash(selectData),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final int count,
      final List<String> chipText,
      final int choiceIndex,
      final String selectData,
      final String time}) = _$_HomeState;

  @override
  int get count;
  @override
  List<String> get chipText;
  @override
  int get choiceIndex;
  @override
  String get selectData;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
