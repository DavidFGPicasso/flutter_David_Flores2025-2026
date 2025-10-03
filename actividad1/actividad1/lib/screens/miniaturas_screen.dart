import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class MiniaturasScreen extends StatelessWidget {
  const MiniaturasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: const Text("Miniaturas en Columnas")),
      body: Column(
        children: [
          Image.asset('assets/pelotafutbol.jpg', height:100),
          Image.asset('assets/pelotabaloncesto.jpg', height:100),
          Image.asset('assets/pelotavoley.jpg', height:100),
        ],
      ),
    );
  }
}
