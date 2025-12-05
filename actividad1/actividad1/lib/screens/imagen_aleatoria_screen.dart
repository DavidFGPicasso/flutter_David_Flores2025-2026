import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart'; 
import '../../widgets/custom_drawer.dart';

class ImagenAleatoriaScreen extends StatefulWidget {
  const ImagenAleatoriaScreen({super.key});

  @override
  State<ImagenAleatoriaScreen> createState() => _ImagenAleatoriaScreenState();
}

class _ImagenAleatoriaScreenState extends State<ImagenAleatoriaScreen> {
  int points = 0;
  double imageX = 100;
  double imageY = 100;
  late Timer _timer;
  bool tapped = false;
  final imageSize = 100.0;

  @override
  void initState() {
    super.initState();
    _loadPoints();       
    startGameLoop();
  }

  Future<void> _loadPoints() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      points = prefs.getInt('points') ?? 0; 
    });
  }
  Future<void> _savePoints() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('points', points);
  }

  void startGameLoop() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!tapped) {
        points -= 2;
      }
      tapped = false;
      setRandomPosition();
      _savePoints(); 
      setState(() {});
    });
  }
  void setRandomPosition() {
    final screenSize = MediaQuery.of(context).size;
    final maxX = screenSize.width - imageSize;
    final maxY = screenSize.height - imageSize - kToolbarHeight - MediaQuery.of(context).padding.top;

    final random = Random();
    imageX = random.nextDouble() * maxX;
    imageY = random.nextDouble() * maxY;
  }

  void onImageTap() {
    tapped = true;
    points += 1;
    _savePoints(); 
    setState(() {});
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text('Imagen Aleatoria')),
      body: Stack(
        children: [
          Positioned(
            top: imageY,
            left: imageX,
            child: GestureDetector(
              onTap: onImageTap,
              child: Image.asset(
                'assets/images/estrella.png',
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'Puntos: $points',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
