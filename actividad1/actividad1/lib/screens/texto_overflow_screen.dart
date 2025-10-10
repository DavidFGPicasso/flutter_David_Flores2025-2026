import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 6',
      home: const TextoOverflowScreen(),
    );
  }
}

class TextoOverflowScreen extends StatelessWidget {
  const TextoOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Texto Overflow")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Texto con fuente por defecto, desbordamiento con ellipsis
          Container(
            color: Colors.amber[100],
            width: 280,
            padding: const EdgeInsets.all(12),
            child: const Text(
              "Este es un texto muy largo que no cabe en el contenedor y se desborda visualmenteffesdeevvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv.",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Texto con fuente de Google Fonts, desbordamiento con fade
          Container(
            color: Colors.blue[100],
            width: 280,
            padding: const EdgeInsets.all(12),
            child: Text(
              "Este texto usa una fuente de Google llamada Roboto Mono, y también es demasiado largovvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv.",
              overflow: TextOverflow.fade,
              maxLines: 1,
              style: GoogleFonts.robotoMono(fontSize: 20),
            ),
          ),
          // Texto con estilo DisplaySmall del tema actual, desbordamiento con clip
          Container(
            color: Colors.green[100],
            width: 280,
            padding: const EdgeInsets.all(12),
            child: Text(
              "Texto con estilo DisplaySmall del tema actual, que también se desbordavvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv.",
              overflow: TextOverflow.clip,
              maxLines: 1,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
