import 'package:best_flutter_widgets/layout/default_layout.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: 'Modal Bottom Sheet',
        child: Center(
          child: ElevatedButton(
            child: const Text('Hello'),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('close'),
                          ),
                          ListTile(
                            leading: const Icon(Icons.access_alarms),
                            title: const Text('test'),
                            subtitle: const Text('This is subtitle'),
                            trailing: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.backspace_rounded)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
