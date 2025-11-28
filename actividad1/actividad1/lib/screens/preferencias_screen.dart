import 'package:flutter/material.dart';

class PreferenciasScreen extends StatefulWidget {
  const PreferenciasScreen({super.key});

  @override
  State<PreferenciasScreen> createState() => _PreferenciasScreenState();
}

class _PreferenciasScreenState extends State<PreferenciasScreen> {
  bool _prefiereExterior = true;
  final Map<String, bool> _opciones = {
    'Natación': false,
    'Fútbol': false,
    'Baloncesto': false,
    'Cocinar': false,
    'Videojuegos': false,
    'YouTube': false,
  };

  List<Widget> _generarOpciones() {
    final List<String> visibles = _prefiereExterior
        ? ['Natación', 'Fútbol', 'Baloncesto']
        : ['Cocinar', 'Videojuegos', 'YouTube'];

    return visibles.map((opcion) {
      return CheckboxListTile(
        title: Text(opcion),
        value: _opciones[opcion],
        onChanged: (bool? valor) {
          setState(() => _opciones[opcion] = valor ?? false);
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preferencias')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const Text('¿Prefieres actividades al aire libre?'),
                Switch(
                  value: _prefiereExterior,
                  onChanged: (valor) {
                    setState(() => _prefiereExterior = valor);
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            ..._generarOpciones(),
          ],
        ),
      ),
    );
  }
}
