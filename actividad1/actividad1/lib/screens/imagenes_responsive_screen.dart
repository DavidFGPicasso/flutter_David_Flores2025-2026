import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class ImagenesResponsiveScreen extends StatelessWidget {
  const ImagenesResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final ancho = tamano.width;
    final alto = tamano.height;

    final double imagenWidth = ancho * 0.25;
    final double imagenHeight = alto * 0.15;
    final double separacionHorizontal = ancho * 0.06;
    final double separacionVertical = alto * 0.03;

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text('Imágenes Responsive')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: separacionVertical),
              // Fila 1 (1 imagen centrada)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/mango.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Mango'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: separacionVertical),
              // Fila 2 (2 imágenes centradas)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/uva.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Uva'),
                    ],
                  ),
                  SizedBox(width: separacionHorizontal),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/manzana.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Manzana'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: separacionVertical),
              // Fila 3 (3 imágenes centradas)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/coco.webp',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Coco'),
                    ],
                  ),
                  SizedBox(width: separacionHorizontal),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/naranja.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Naranja'),
                    ],
                  ),
                  SizedBox(width: separacionHorizontal),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/banana.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('banana'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: separacionVertical),
            ],
          ),
        ),
      ),
    );
  }
}
