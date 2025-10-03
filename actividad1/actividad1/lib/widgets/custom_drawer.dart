import 'package:flutter/material.dart';
import '../screens/nombre_apellidos_screen.dart';
import '../screens/imagen_personal_screen.dart';
import '../screens/miniaturas_screen.dart';
import '../screens/iconos_fila_screen.dart';
import '../screens/imagenes_columna_screen.dart';

// Drawer personalizado.
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Introducimos las secciones del drawer.
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text('Menú', style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
          ListTile(
            title: Text('Nombre y Apellidos'),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => NombreApellidosScreen())),
          ),
          ListTile(
            title: Text('Imagen Personal'),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => ImagenPersonalScreen())),
          ),
          ListTile(
            title: Text('Miniaturas en Columnas'),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => MiniaturasScreen())),
          ),
          ListTile(
            title: Text('Iconos en Filas'),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => IconosFilaScreen())),
          ),
          ListTile(
            title: Text('Imágenes en Columnas'),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => ImagenesColumnaScreen())),
          ),
        ],
      ),
    );
  }
}
