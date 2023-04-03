//Provider

import 'package:contador/screens/contador.dart';
import 'package:contador/utils/func_contador.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => FuncContadorNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true)
          .copyWith(primaryColor: Colors.amber),
      home: const Contador(),
    );
  }
}
