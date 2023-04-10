//Riverpod

import 'package:contador/screens/contador.dart';
import 'package:contador/utils/func_contador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true)
          .copyWith(primaryColor: Colors.amber),
      home: const Contador(),
    );
  }
}
