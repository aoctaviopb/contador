import 'package:contador/utils/func_contador.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;

  FuncContador funcContador = FuncContador();

  void counter() {
    cont = funcContador.counter(cont);
    setState(() {});
  }

  void reset() {
    cont = funcContador.reset(cont);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: counter,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Contador solo Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Soy un contador: $cont'),
            TextButton(
              onPressed: reset,
              child: const Text('Reiniciar conteo'),
            ),
/*             Flexible(
              child: Container(),
            ), */
          ],
        ),
      ),
    );
  }
}
