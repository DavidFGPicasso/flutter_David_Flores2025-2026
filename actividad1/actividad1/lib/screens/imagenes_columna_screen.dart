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
          Image.asset('assets/images/perro.jpg', height: 100),
          Image.asset('assets/images/gato.jpg', height: 100),
          Image.asset('assets/images/cerdo.jpg', height: 100),
          Image.asset('assets/images/caballo.jpg', height: 100),
          Image.asset('assets/images/vaca.jpg', height: 100),
        ],
      ),
    );
  }
}
