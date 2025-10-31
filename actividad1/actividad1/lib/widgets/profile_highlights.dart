import 'package:flutter/material.dart';
// Highlights del perfil.
class ProfileHighlights extends StatelessWidget {
  final List<Map<String, String>> highlights;
  const ProfileHighlights({super.key, required this.highlights});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: highlights.map((item) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.grey.shade300,
                  child: ClipOval(
                    child: Image.asset(
                      item['icon']!,
                      fit: BoxFit.cover,
                      width: 48,
                      height: 48,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(item['title']!, style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
