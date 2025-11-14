import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';
import 'dart:math';
import 'dart:async';


class ColoresAleatoriosScreen extends StatefulWidget {
  const ColoresAleatoriosScreen({super.key});

  @override
  State<ColoresAleatoriosScreen> createState() => _ColoresAleatoriosScreenState();
}

class _ColoresAleatoriosScreenState extends State<ColoresAleatoriosScreen> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  late Timer _timer;

  final colorNames = ['azul', 'verde', 'naranja'];
  final colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  @override
  void initState() {
    super.initState();
    getRandomPair();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      getRandomPair();
      setState(() {});
    });
  }

  void getRandomPair() {
    final random = Random();
    final index = random.nextInt(colorNames.length);
    randomName = colorNames[index];
    randomColor = colorHex[index];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) return 'azul';
    if (hexColor == const Color(0xFF00FF00)) return 'verde';
    return 'naranja';
  }

  void onGiftTap(String name, Color color) {
    final colorToString = hexToStringConverter(color);
    points += (name == colorToString) ? 1 : -1;
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
      appBar: AppBar(title: const Text('Colores Aleatorios')),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Center(
            child: GestureDetector(
              onTap: () => onGiftTap(randomName, randomColor),
              child: Column(
                children: [
                  Container(width: 120, height: 120, color: randomColor),
                  Text(
                    randomName,
                    style: TextStyle( 
                      color: randomColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
