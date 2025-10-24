import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imágenes Repetidas',
      home: const ImagenesScreen(),
    );
  }
}

class ImagenesScreen extends StatelessWidget {
  const ImagenesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tres Imágenes Repetidas")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            // Imagen desde assets
            Image(
              image: AssetImage('assets/agua.jpg'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            // Imagen desde Internet
            Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            // Repetición de la imagen local
            Image(
              image: AssetImage('assets/agua.jpg'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
