import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class VentanaInstagramScreen extends StatelessWidget {
  const VentanaInstagramScreen({super.key});
  // Lista con las imagenes de las publicaciones.
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
  // Lista con los highlights.
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
          // Parte superior de la página.
          Column(
            children: [
              Padding(
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
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Yorozuya Squad', style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text('Gintoki Sakata'),
                    const Text('Kagura'),
                    const Text('Shinpachi Shimura'),
                    const Text('Be forever yorozuya'),
                    const Text('bit.ly/2w9g74q', style: TextStyle(color: Colors.blue)),
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
              ),

              const SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 28),
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () {},
                        child: const Text('Following', style: TextStyle(fontSize: 11, color: Colors.black)),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 28),
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () {},
                        child: const Text('Message', style: TextStyle(fontSize: 11, color: Colors.black)),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 28),
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () {},
                        child: const Text('Email', style: TextStyle(fontSize: 11, color: Colors.black)),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(Icons.arrow_drop_down, size: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Highlights
              SizedBox(
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
              ),

              const SizedBox(height: 12),
              // Iconos de navegación de instagram.
              Padding(
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
              ),

              const SizedBox(height: 8),
            ],
          ),
          // Grid con scroll independiente
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(2),
              physics: const BouncingScrollPhysics(),
              itemCount: postImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Image.asset(postImages[index], fit: BoxFit.cover);
              },
            ),
          ),
        ],
      ),
    );
  }
}
