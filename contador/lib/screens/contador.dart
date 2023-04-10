import 'package:contador/utils/func_contador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

class Contador extends ConsumerStatefulWidget {
  const Contador({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContadorState();
}

class _ContadorState extends ConsumerState<Contador> {

  @override
  Widget build(BuildContext context) {
    final contadorProv = ref.watch(contadorProvider);
    final contadorStateNotProv = ref.watch(funContNotProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador solo Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Soy un contador con Provider: ${contadorProv}'),
            TextButton(
              onPressed: () {
                ref
                    .read(contadorProvider.notifier)
                    .update((state) => state + 1);
              },
              child: const Text('Contar'),
            ),
            TextButton(
              onPressed: () {
                ref
                    .read(contadorProvider.notifier)
                    .update((state) => state = 0);
              },
              child: const Text('Reiniciar conteo'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('Soy un contador con stateNotifierProvider: ${contadorStateNotProv}'),
            TextButton(
              onPressed: () {
                ref.read(funContNotProvider.notifier).counter();
              },
              child: const Text('Contar'),
            ),
            TextButton(
              onPressed: () {
                ref.read(funContNotProvider.notifier).reset();
              },
              child: const Text('Reiniciar conteo'),
            ),
          ],
        ),
      ),
    );
  }
}
