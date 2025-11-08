import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Scrollbar( 
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true, 
            children: [
              Container(
                height: 80, 
                color: Colors.indigo,
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
            ],
          ),
        ),
      ),
    );
  }
  // Función para devolver los ListTile.
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
