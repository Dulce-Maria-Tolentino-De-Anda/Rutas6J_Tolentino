import 'package:flutter/material.dart';

class MiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  MiAppBar({required this.titulo});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff91f321),
      title: Text(
        titulo,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      bottom: null,
      elevation: 0,
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(titulo: 'Primera Pantalla'),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Ir a la Segunda Pantalla'),
        ),
      ),
    );
  }
}

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
