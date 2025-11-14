import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart'; 

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  void _restarContador() {
    setState(() {
      _contador--;
    });
  }

  void _reiniciarContador() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final Color primaryColor = Theme.of(context).appBarTheme.backgroundColor ?? Colors.green;

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Contador de clics'),
        backgroundColor: primaryColor, 
      ),
      body: Center(
        child: Text(
          'Has hecho clic $_contador veces',
          style: TextStyle(
            fontSize: 24,
            color: primaryColor, 
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _restarContador,
            tooltip: 'Restar',
            backgroundColor: Colors.redAccent, 
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _reiniciarContador,
            tooltip: 'Reiniciar',
            backgroundColor: Colors.grey,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _incrementarContador,
            tooltip: 'Incrementar',
            backgroundColor: primaryColor, 
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
