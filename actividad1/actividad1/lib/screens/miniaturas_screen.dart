import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class MiniaturasScreen extends StatelessWidget {
  const MiniaturasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: const Text("Miniaturas en Columnas")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Hacemos un row para poner las miniaturas en fila.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/pelotafutbol.jpg', width: 80),
            Image.asset('assets/pelotabaloncesto.jpg', width: 80),
            Image.asset('assets/pelotavoley.jpg', width: 80),
          ],
        ),
      ),
    );
  }
}
