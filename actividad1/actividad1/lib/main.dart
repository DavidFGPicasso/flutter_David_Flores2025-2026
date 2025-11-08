import 'package:flutter/material.dart';
import 'screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Personalizado',
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/', 
      routes: {
        '/': (context) => const NombreApellidosScreen(),
        '/imagen-personal': (context) => const ImagenPersonalScreen(),
        '/miniaturas': (context) => const MiniaturasScreen(),
        '/iconos-fila': (context) => const IconosFilaScreen(),
        '/imagenes-columna': (context) => const ImagenesColumnaScreen(),
        '/imagenes-dispuestas': (context) => const ImagenesDispuestasScreen(),
        '/texto-overflow': (context) => const TextoOverflowScreen(),
        '/imagenes-responsive': (context) => const ImagenesResponsiveScreen(),
        '/reto-container': (context) => const RetoContainerScreen(),
        '/contador': (context) => const ContadorScreen(),
        '/instagram': (context) => const VentanaInstagramScreen(),
        '/colores-aleatorios': (context) => const ColoresAleatoriosScreen(),
        '/imagen-aleatoria': (context) => const ImagenAleatoriaScreen(),
      },
    );
  }
}
