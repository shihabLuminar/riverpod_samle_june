import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_samle_june/controller/counter_screen_controller/counter_screen_state.dart';

final counterScreenStateNotifierProvider =
    StateNotifierProvider((ref) => CounterScreenStateNotifier());

class CounterScreenStateNotifier extends StateNotifier<CounterScreenState> {
  CounterScreenStateNotifier() : super(CounterScreenState(count: 100));

  onIncrement() {
    state = state.copyWith(
        newCount: ++state.count,
        newName: state.count.isEven ? "shihab" : "luminar");
  }
}
