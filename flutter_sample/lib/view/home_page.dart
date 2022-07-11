import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/home_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    final homeNotifier = ref.watch(homeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter MVVM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${homeState.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeNotifier.increaseCount,
        child: const Icon(Icons.add),
      ),
    );
  }
}
