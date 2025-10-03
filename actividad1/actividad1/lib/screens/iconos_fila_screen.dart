import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class IconosFilaScreen extends StatelessWidget {
  const IconosFilaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text('Iconos en Filas')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // Hacemos un children con varios iconos.
        children: [
          Icon(Icons.home, size: 40),
          Icon(Icons.star, size: 40),
          Icon(Icons.school, size: 40),
          Icon(Icons.code, size: 40),
          Icon(Icons.person, size: 40),
        ],
      ),
    );
  }
}
