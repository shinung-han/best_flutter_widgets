import 'package:flutter/material.dart';

class PreferredSizeScreen extends StatelessWidget {
  const PreferredSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: SafeArea(
            child: ListTile(
              title: const Text(
                'PreferredSizeScreen',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
