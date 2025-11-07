import 'package:flutter/material.dart';

import '../screens/iconos_fila_screen.dart';
import '../screens/imagen_personal_screen.dart';
import '../screens/imagenes_columna_screen.dart';
import '../screens/imagenes_dispuestas.dart';
import '../screens/imagenes_responsive_screen.dart';
import '../screens/miniaturas_screen.dart';
import '../screens/nombre_apellidos_screen.dart';
import '../screens/ventana_instagram_screen.dart';
import '../screens/reto_container_screen.dart';
import '../screens/texto_overflow_screen.dart';
import '../screens/contador_screen.dart';
import '../screens/colores_aleatorios_screen.dart';
import '../screens/imagen_aleatoria_screen.dart'; 

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Text(
                'Menú',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Nombre y Apellidos'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const NombreApellidosScreen()),
              ),
            ),
            ListTile(
              title: const Text('Imagen Personal'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenPersonalScreen()),
              ),
            ),
            ListTile(
              title: const Text('Miniaturas en Columnas'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MiniaturasScreen()),
              ),
            ),
            ListTile(
              title: const Text('Iconos en Filas'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const IconosFilaScreen()),
              ),
            ),
            ListTile(
              title: const Text('Imágenes en Columnas'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesColumnaScreen()),
              ),
            ),
            ListTile(
              title: const Text('Imágenes dispuestas'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesDispuestasScreen()),
              ),
            ),
            ListTile(
              title: const Text('Texto Overflow'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TextoOverflowScreen()),
              ),
            ),
            ListTile(
              title: const Text('Imagenes Responsive'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesResponsiveScreen()),
              ),
            ),
            ListTile(
              title: const Text('Reto Container'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RetoContainerScreen()),
              ),
            ),
            ListTile(
              title: const Text('Contador de clics'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContadorScreen()),
              ),
            ),
            ListTile(
              title: const Text('Perfil tipo Instagram'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const VentanaInstagramScreen()),
              ),
            ),
            ListTile(
              title: const Text('Colores Aleatorios'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ColoresAleatoriosScreen()),
              ),
            ),
            ListTile(
              title: const Text('Imagen Aleatoria'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenAleatoriaScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
