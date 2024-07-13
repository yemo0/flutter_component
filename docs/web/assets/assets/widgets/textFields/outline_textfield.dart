import 'package:flutter/material.dart';

class MyOutlineTextField extends StatelessWidget {
  const MyOutlineTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder()
      ),
    );
  }

}