import 'package:flutter/material.dart';
import 'package:tolentinoRutas/main.dart';

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(titulo: 'Primera Pantalla'),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tercera');
              },
              child: const Text('Ir a la tercera Pantalla'),
            ),
          ),
        ],
      ),
    );
  }
}
