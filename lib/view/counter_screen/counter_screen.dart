import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_samle_june/controller/counter_screen_controller/counter_screen_controller.dart';
import 'package:riverpod_samle_june/controller/counter_screen_controller/counter_screen_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterScreenState =
        ref.watch(counterScreenStateNotifierProvider) as CounterScreenState;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterScreenStateNotifierProvider.notifier).onIncrement();
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counterScreenState.name),
            Text(counterScreenState.count.toString()),
          ],
        ),
      ),
    );
  }
}
