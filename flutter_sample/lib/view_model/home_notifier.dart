import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../model/home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());

  void increaseCount() async {
    state = state.copyWith(count: state.count + 1);
  }

  void selectChip(bool selected, int index) async {
    if (selected) {
      state = state.copyWith(choiceIndex: index);
      state = state.copyWith(selectData: state.chipText[index]);
    } else {
      state = state.copyWith(choiceIndex: 0);
    }
  }

  void getTime(Timer timer) async {
    dynamic now = DateTime.now();
    dynamic dateFormat = DateFormat('yyyy.MM.dd(EEEE)\nHH:mm:ss');
    dynamic timeString = dateFormat.format(now);

    state = state.copyWith(time: timeString);
  }
}

final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(),
);
