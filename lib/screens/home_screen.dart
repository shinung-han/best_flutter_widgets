import 'package:best_flutter_widgets/screens/material_banner_screen.dart';
import 'package:best_flutter_widgets/screens/preferred_size_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const MaterialBannerScreen(),
                ),
              );
            },
            child: const Text('MaterialBanner'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const PreferredSizeScreen(),
                ),
              );
            },
            child: const Text('PreferredSizeScreen'),
          ),
        ],
      ),
    );
  }
}
