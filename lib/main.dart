import 'package:flutter/material.dart';
import 'package:flutter_component/responsive.dart';
import 'package:flutter_component/ui/desktop_body.dart';
import 'package:flutter_component/ui/mobile_body.dart';
import 'package:flutter_component/ui/test_screen.dart';
import 'package:flutter_component/widgets_load.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    widgetsLoad();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TestScreen())),
        tooltip: 'Test',
        child: const Icon(Icons.emoji_emotions),
      ),
      body: const MyResponsive(mobileBody: MobileBody(), desktopBody: DesktopBody()),
    );
  }
}
