import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int count,
    @Default(['北海道', '旅行', '札幌', '函館', '食べ物', '有名', '海鮮', 'ラーメン']) List<String> chipText,
    @Default(0) int choiceIndex,
    @Default('北海道') String selectData,
    @Default('00:00:00') String time,
  }) = _HomeState;
}
