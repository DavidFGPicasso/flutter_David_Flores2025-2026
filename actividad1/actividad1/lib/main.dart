import 'package:flutter/material.dart';
import 'screens/screens.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // Tema original 
  final ThemeData defaultTheme = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      elevation: 4,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    ),
  );

  // Tema actual
  ThemeData currentTheme = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      elevation: 4,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    ),
  );

  // Cambiar el tema a un color específico
  void changeTheme(Color color) {
    setState(() {
      currentTheme = ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: color,
          foregroundColor: Colors.white,
          elevation: 4,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: const TextStyle(fontSize: 18, color: Colors.black87),
          bodyMedium: const TextStyle(fontSize: 16, color: Colors.black54),
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      );
    });
  }

  // Restaurar el tema original
  void resetTheme() {
    setState(() {
      currentTheme = defaultTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Personalizado',
      theme: currentTheme,
      initialRoute: '/splash', 
      routes: {
        '/splash': (context) => const SplashScreen(),
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
