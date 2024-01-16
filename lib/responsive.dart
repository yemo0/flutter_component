import 'package:flutter/material.dart';

class MyResponsive extends StatelessWidget {
  final mobileWidth = 600;
  final Widget mobileBody;
  final Widget desktopBody;

  static bool isMobile = true;

  const MyResponsive({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        // mobile
        isMobile = true;
        return mobileBody;
      }
      // desktop
      isMobile = false;
      return desktopBody;
    });
  }
}