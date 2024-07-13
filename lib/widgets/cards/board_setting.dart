import 'package:flutter/material.dart';

class MyBoardSetting extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final TextStyle? titleStyle;
  final List<Widget> children;
  const MyBoardSetting(
      {super.key,
      required this.title,
      required this.children,
      this.height,
      this.width,
      this.titleStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              title,
              style: titleStyle ?? Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: children,
            ),
          )
        ],
      ),
    );
  }
}