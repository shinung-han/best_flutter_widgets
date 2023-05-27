import 'package:best_flutter_widgets/screens/bottom_sheet_screen.dart';
import 'package:best_flutter_widgets/screens/material_banner_screen.dart';
import 'package:best_flutter_widgets/screens/preferred_size_screen.dart';
import 'package:flutter/material.dart';

class Buttons {
  final String title;
  final Widget widget;

  Buttons({
    required this.title,
    required this.widget,
  });
}

class HomeScreen extends StatelessWidget {
  final buttonList = [
    Buttons(
        title: 'MaterialBannerScreen', widget: const MaterialBannerScreen()),
    Buttons(title: 'PreferredSizeScreen', widget: const PreferredSizeScreen()),
    Buttons(title: 'BottomSheetScreen', widget: const BottomSheetScreen()),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: buttonList
              .map(
                (e) => ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => e.widget,
                      ),
                    );
                  },
                  // style: ElevatedButton.styleFrom(
                  //   backgroundColor: Theme.of(context).primaryColor,
                  //   foregroundColor: Colors.white,
                  // ),
                  child: Text(e.title),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
