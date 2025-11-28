import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class NombreApellidosScreen extends StatelessWidget {
  const NombreApellidosScreen({super.key});

  static const String githubUrl =
      'https://github.com/DavidFGPicasso/flutter_David_Flores2025-2026.git';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text('Nombre y Apellidos')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'David',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flores Gutiérrez',
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            const Text(
              'Repositorio de GitHub:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () => launchUrl(
                Uri.parse(githubUrl),
                mode: LaunchMode.externalApplication,
              ),
              hoverColor: Colors.transparent,      
              splashColor: Colors.transparent,     
              highlightColor: Colors.transparent, 
              mouseCursor: SystemMouseCursors.click, 
              child: const Text(
                githubUrl,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,              
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,   
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
