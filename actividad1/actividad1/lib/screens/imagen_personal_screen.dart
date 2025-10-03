import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class ImagenPersonalScreen extends StatelessWidget {
  const ImagenPersonalScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  CustomDrawer(), 
      appBar: AppBar(title: const Text('Imagen Personal')),
      body: Center(
        // hacemos un child para guardar la imagen y el texto.
        child: Column(
          // Alineamos en el centro.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              // Imagen de fondo.
              backgroundImage: AssetImage('assets/imagenrepresenta.jpg'), 
            ),
            const SizedBox(height: 20),
            // Texto con el nombre.
            const Text(
              'David Flores Gutiérrez',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
