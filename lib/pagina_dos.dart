import 'package:flutter/material.dart';
import 'package:tolentinoRutas/main.dart';
import 'package:tolentinoRutas/pagina_dos.dart';

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(titulo: 'Segunda Pantalla'),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Regresar'),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const PrimeraPantalla(),
        '/second': (context) => const SegundaPantalla(),
      },
      // Quita la etiqueta de "DEBUG" en la esquina superior derecha
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MiPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(titulo: 'Título de la App'),
      body: Center(
        child: Text('Contenido de la pantalla'),
      ),
    );
  }
}
