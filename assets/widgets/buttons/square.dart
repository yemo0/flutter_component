import 'package:flutter/material.dart';

class MySquareButton extends StatelessWidget {
  const MySquareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        )
      ),
      child: const Text("click"),
    );
  }
}
