import 'package:flutter/material.dart';
import '../main.dart'; 

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final Color menuColor = Theme.of(context).appBarTheme.backgroundColor ?? Colors.green;

    return Drawer(
      child: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              Container(
                height: 80,
                color: menuColor,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  'Menú',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              _drawerItem(context, 'Nombre y Apellidos', '/'),
              _drawerItem(context, 'Imagen Personal', '/imagen-personal'),
              _drawerItem(context, 'Miniaturas en Columnas', '/miniaturas'),
              _drawerItem(context, 'Iconos en Filas', '/iconos-fila'),
              _drawerItem(context, 'Imágenes en Columnas', '/imagenes-columna'),
              _drawerItem(context, 'Imágenes dispuestas', '/imagenes-dispuestas'),
              _drawerItem(context, 'Texto Overflow', '/texto-overflow'),
              _drawerItem(context, 'Imagenes Responsive', '/imagenes-responsive'),
              _drawerItem(context, 'Reto Container', '/reto-container'),
              _drawerItem(context, 'Contador de clics', '/contador'),
              _drawerItem(context, 'Perfil tipo Instagram', '/instagram'),
              _drawerItem(context, 'Colores Aleatorios', '/colores-aleatorios'),
              _drawerItem(context, 'Imagen Aleatoria', '/imagen-aleatoria'),

              // Botón para cambiar el tema a Azul
              ListTile(
                leading: const Icon(Icons.color_lens, color: Colors.blue),
                title: const Text('Cambiar a Azul'),
                onTap: () {
                  Navigator.pop(context);
                  context.findAncestorStateOfType<MyAppState>()?.changeTheme(Colors.blue);
                },
              ),
              // Botón para restaurar el tema original
              ListTile(
                leading: const Icon(Icons.restore, color: Colors.green),
                title: const Text('Restaurar Tema Original'),
                onTap: () {
                  Navigator.pop(context);
                  context.findAncestorStateOfType<MyAppState>()?.resetTheme();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}
