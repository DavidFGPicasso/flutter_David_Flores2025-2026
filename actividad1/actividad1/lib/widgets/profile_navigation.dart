import 'package:flutter/material.dart';
// Navegación del perfil.
class ProfileNavigation extends StatelessWidget {
  const ProfileNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.grid_on, size: 28, color: Colors.black),
          Icon(Icons.live_tv, size: 28, color: Colors.grey),
          Icon(Icons.shopping_bag_outlined, size: 28, color: Colors.grey),
          Icon(Icons.person_outline, size: 28, color: Colors.grey),
        ],
      ),
    );
  }
}
