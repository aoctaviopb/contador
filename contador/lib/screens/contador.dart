import 'package:contador/utils/func_contador.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Contador extends StatelessWidget {
  const Contador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<FuncContadorNotifier>().counter();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Contador solo Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<FuncContadorNotifier>(
              builder: (context, ref, child) {
                return Text('Soy un contador con Provider: ${ref.cont}');
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<FuncContadorNotifier>(context, listen: false)
                    .reset();
              },
              child: const Text('Reiniciar conteo'),
            ),
          ],
        ),
      ),
    );
  }
}
