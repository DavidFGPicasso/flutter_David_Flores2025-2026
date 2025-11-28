import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Descripción del perfil.
class ProfileDescription extends StatelessWidget {
  const ProfileDescription({super.key});

  static const String profileUrl = 'https://bit.ly/2w9g74q';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Yorozuya Squad', style: TextStyle(fontWeight: FontWeight.bold)),
          const Text('Gintoki Sakata'),
          const Text('Kagura'),
          const Text('Shinpachi Shimura'),
          const Text('Be forever yorozuya'),
          InkWell(
            onTap: () => launchUrl(
              Uri.parse(profileUrl),
              mode: LaunchMode.externalApplication,
            ),
            hoverColor: Colors.transparent,      
            splashColor: Colors.transparent,     
            highlightColor: Colors.transparent,  
            mouseCursor: SystemMouseCursors.click, 
            child: const Text(
              profileUrl,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,             
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,    
              ),
            ),
          ),
          const SizedBox(height: 4),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12),
              children: [
                TextSpan(text: 'Followed by '),
                TextSpan(
                  text: 'sejiexx, thedailyconcealer and 22 others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
