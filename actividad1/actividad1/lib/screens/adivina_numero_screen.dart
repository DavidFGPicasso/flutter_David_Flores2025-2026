import 'package:flutter/material.dart';
import 'dart:math';

class AdivinaNumeroScreen extends StatefulWidget {
  const AdivinaNumeroScreen({super.key});

  @override
  State<AdivinaNumeroScreen> createState() => _AdivinaNumeroScreenState();
}

class _AdivinaNumeroScreenState extends State<AdivinaNumeroScreen> {
  final TextEditingController _controller = TextEditingController();
  final int _numeroSecreto = Random().nextInt(100) + 1;
  String _mensaje = '';

  void _validarNumero() {
    final int? numero = int.tryParse(_controller.text);
    if (numero == null || numero < 1 || numero > 100) {
      setState(() => _mensaje = 'Introduce un número válido entre 1 y 100');
    } else if (numero < _numeroSecreto) {
      setState(() => _mensaje = 'Demasiado bajo');
    } else if (numero > _numeroSecreto) {
      setState(() => _mensaje = 'Demasiado alto');
    } else {
      setState(() => _mensaje = '¡Correcto! Has adivinado el número 🎉');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adivina el número')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Introduce un número del 1 al 100',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _validarNumero,
              child: const Text('Validar'),
            ),
            const SizedBox(height: 20),
            Text(_mensaje, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
