import 'package:best_flutter_widgets/layout/default_layout.dart';
import 'package:flutter/material.dart';

class MaterialBannerScreen extends StatelessWidget {
  const MaterialBannerScreen({super.key});

  Future<void> onVisible(BuildContext context) {
    return Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (_) => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Material Banner',
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                onVisible: () => onVisible(context),
                padding: const EdgeInsets.all(20),
                leading: const Icon(Icons.notifications_active_outlined),
                content: const Text('알림이 설정 되었습니다.'),
                backgroundColor: Colors.white,
                elevation: 2,
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text('닫기'),
                  )
                ],
              ),
            );
          },
          child: const Text('알림'),
        ),
      ),
    );
  }
}
