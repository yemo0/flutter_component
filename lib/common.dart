import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

final currentIndex = StateProvider((ref) => 0);
final pageController = PageController();
