import 'package:flutter/material.dart';
import 'package:flutter_component/ui/page_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageContent(),
    );
  }
}
