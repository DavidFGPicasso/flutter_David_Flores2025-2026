import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class ImagenesColumnaScreen extends StatelessWidget {
  const ImagenesColumnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text('Imágenes en Columnas')),
      // Hacemos una columna para guardar las imágenes en columnas.
      body: Column(
        children: [
          Image.asset('assets/perro.jpg', height: 100),
          Image.asset('assets/gato.jpg', height: 100),
          Image.asset('assets/cerdo.jpg', height: 100),
          Image.asset('assets/caballo.jpg', height: 100),
          Image.asset('assets/vaca.jpg', height: 100),
        ],
      ),
    );
  }
}
