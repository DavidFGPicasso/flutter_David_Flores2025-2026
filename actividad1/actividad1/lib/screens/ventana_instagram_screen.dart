import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_description.dart';
import '../widgets/profile_actions.dart';
import '../widgets/profile_highlights.dart';
import '../widgets/profile_navigation.dart';
import '../widgets/profile_grid.dart';

class VentanaInstagramScreen extends StatelessWidget {
  const VentanaInstagramScreen({super.key});
  // Lista con las imágenes de  las publicaciones.
  final List<String> postImages = const [
    'assets/images/yorozuya.jpg',
    'assets/images/kagura.jpg',
    'assets/images/shinpachi.webp',
    'assets/images/sadaharu.webp',
    'assets/images/katsura.jpg',
    'assets/images/sakamoto.webp',
    'assets/images/takasugi.webp',
    'assets/images/shouyou.webp',
    'assets/images/hijikata.jpg',
    'assets/images/okita.jpg',
    'assets/images/kondo.webp',
  ];
  // Lista con los highlights del perfil.
  final List<Map<String, String>> highlights = const [
    {'title': 'Info', 'icon': 'assets/images/sensei.jpg'},
    {'title': 'Shinsengumi', 'icon': 'assets/images/shinsengumi.webp'},
    {'title': 'Shogun', 'icon': 'assets/images/shogun.webp'},
    {'title': 'Gintama', 'icon': 'assets/images/gintama.webp'},
    {'title': 'Kihetai', 'icon': 'assets/images/kihetai.webp'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Row(
          children: const [
            Text('Gintoki Sakata', style: TextStyle(color: Colors.black)),
            SizedBox(width: 6),
            Icon(Icons.verified, color: Colors.blue, size: 18),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Column(
            children: [
              // llamamos a los widgets.
              const ProfileHeader(),
              const ProfileDescription(),
              const SizedBox(height: 12),
              const ProfileActions(),
              const SizedBox(height: 16),
              ProfileHighlights(highlights: highlights),
              const SizedBox(height: 12),
              const ProfileNavigation(),
              const SizedBox(height: 8),
            ],
          ),
          Expanded(child: ProfileGrid(postImages: postImages)),
        ],
      ),
    );
  }
}
