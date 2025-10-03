import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class NombreApellidosScreen extends StatelessWidget {
  const NombreApellidosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: const Text('Nombre y Apellidos')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        // Hacemos una columna para poner el nombre y los apellidos.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'David',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Flores Gutiérrez',
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Text(
              'Repositorio de GitHub:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              'https://github.com/DavidFGPicasso/flutter_David_Flores2025-2026.git',
              style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
