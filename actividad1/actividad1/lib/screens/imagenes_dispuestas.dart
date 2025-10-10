import 'package:flutter/material.dart';

class ImagenesDispuestasScreen extends StatelessWidget {
  const ImagenesDispuestasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Imágenes Repetidas")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            // Imagen desde assets: agua.jpg
            Image(
              image: AssetImage('assets/agua.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Imagen desde Internet
            Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Repetición de agua.jpg
            Image(
              image: AssetImage('assets/agua.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Imagen raton.jpg repetida varias veces
            Image(
              image: AssetImage('assets/raton.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Image(
              image: AssetImage('assets/raton.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Image(
              image: AssetImage('assets/raton.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
