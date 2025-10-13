import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const String name = 'counter_screen';
  

  const CounterScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int counterValue = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier)
                .toggleDarkMode();
            },
            icon: isDarkMode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined)
          )
        ],
      ),
      body: Center(
        child: Text('Value: $counterValue', style: Theme.of(context).textTheme.titleLarge)
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
