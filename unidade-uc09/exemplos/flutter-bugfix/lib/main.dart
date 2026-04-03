import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Bugfix Flutter')),
        body: const Center(child: ResultadoWidget()),
      ),
    );
  }
}

class ResultadoWidget extends StatelessWidget {
  const ResultadoWidget({super.key});

  double calcularTotal(double valor, double descontoPercentual) {
    // BUG intencional: o desconto está sendo somado ao valor.
    return valor + (valor * descontoPercentual / 100);
  }

  @override
  Widget build(BuildContext context) {
    final total = calcularTotal(200, 10);

    return Text(
      'Total com desconto: R\$ ${total.toStringAsFixed(2)}',
      style: const TextStyle(fontSize: 20),
    );
  }
}
