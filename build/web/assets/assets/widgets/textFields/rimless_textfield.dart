import 'package:flutter/material.dart';

class MyRimlessTextField extends StatelessWidget {
  const MyRimlessTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
      )
    );
  }
}