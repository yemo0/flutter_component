import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_component/ui/side_menu.dart';

import 'ui/test_screen.dart';

class RootLayout extends StatelessWidget {
  final Widget child;
  const RootLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isPhone = MediaQuery.sizeOf(context).width < 600;
    if (isPhone) {
      return child;
    }
    // pc layout
    return Scaffold(
      floatingActionButton: kDebugMode
          ? FloatingActionButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TestScreen())),
              tooltip: 'Test',
              child: const Icon(Icons.emoji_emotions),
            )
          : null,
      body: Row(
        children: [
          const SideMenu(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
