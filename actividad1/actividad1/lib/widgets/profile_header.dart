import 'package:flutter/material.dart';
// Header del perfil.
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/gintoki.jpg'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Column(
                  children: [
                    Text('11', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Posts'),
                  ],
                ),
                Column(
                  children: [
                    Text('10.000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Followers'),
                  ],
                ),
                Column(
                  children: [
                    Text('1,754', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Following'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
