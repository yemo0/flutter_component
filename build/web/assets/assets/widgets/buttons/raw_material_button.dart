import 'package:flutter/material.dart';

class MyRawMaterialButton extends StatelessWidget {
  const MyRawMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: () {}, child: const Text("click"),);
  }

}