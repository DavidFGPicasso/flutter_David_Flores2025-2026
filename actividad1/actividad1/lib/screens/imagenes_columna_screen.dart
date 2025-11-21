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
          Image.asset('assets/images/superman.png', height: 100),
          Image.asset('assets/images/batman.webp', height: 100),
          Image.asset('assets/images/wonderwoman.webp', height: 100),
          Image.asset('assets/images/hulk.webp', height: 100),
          Image.asset('assets/images/lacosa.jpg', height: 100),
        ],
      ),
    );
  }
}
