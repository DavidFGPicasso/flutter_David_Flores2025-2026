import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class RetoContainerScreen extends StatelessWidget {
  const RetoContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final ancho = tamano.width;
    final alto = tamano.height;

    // Tamaños.
    final double contenedorWidth = ancho * 0.8;
    final double contenedorHeight = alto * 0.1;
    final double subContenedorWidth = contenedorWidth * 0.7;
    final double fontSize = ancho < 400 ? 24 : 32;

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Reto Container'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(ancho * 0.08),
          width: contenedorWidth,
          height: contenedorHeight,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFF4CAF50), 
            borderRadius: BorderRadius.circular(contenedorHeight / 2),
          ),
          child: Container(
            width: subContenedorWidth,
            height: contenedorHeight,
            decoration: BoxDecoration(
              color: const Color(0xFF94CCF9), 
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(contenedorHeight / 2),
                bottomLeft: Radius.circular(contenedorHeight / 2),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Challenge',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
