import 'package:flutter/material.dart';
import 'package:flutter_component/common.dart';
import 'package:flutter_component/widget_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends ConsumerWidget {
  const SideMenu({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 150,
      child: ListView.builder(
        itemBuilder: (context, index) => itemBuilder(context, index, ref),
        itemCount: widgetData.length,
      ),
    );
  }

  Widget itemBuilder(context, index, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (GoRouter.of(context).state!.matchedLocation == "/detail") {
          GoRouter.of(context).pop();
        }
        ref.read(currentIndex.notifier).state = index;
        pageController.jumpToPage(index);
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        decoration: BoxDecoration(
          color: ref.watch(currentIndex) == index ? Colors.greenAccent : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(widgetData[index].widgetName[0].toUpperCase() + widgetData[index].widgetName.substring(1)),
      ),
    );
  }
}
