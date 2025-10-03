import 'package:flutter/material.dart';
import 'screens/nombre_apellidos_screen.dart';
// Programa principal.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Personalizado',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const NombreApellidosScreen(), 
    );
  }
}
