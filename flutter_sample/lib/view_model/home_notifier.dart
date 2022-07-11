import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());

  void increaseCount() async {
    state = state.copyWith(count: state.count + 1);
  }
}

final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(),
);
