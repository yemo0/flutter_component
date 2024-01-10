import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentIndex = StateProvider((ref) => 0);
final pageController = PageController();

class VerticalTabBar extends StatelessWidget {
  const VerticalTabBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [SizedBox(width: 200, child: LeftTab()), Expanded(child: PageContent())],
    );
  }
}

class LeftTab extends ConsumerWidget {
  static const content = ["TextField", "Button", "Text", "Card"];

  const LeftTab({super.key});

  Widget itemBuilder(context, index, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(currentIndex.notifier).state = index;
        pageController.jumpToPage(index);
      },
      child: Container(
        height: 50,
        color: ref.watch(currentIndex) == index ? Colors.greenAccent : Colors.transparent,
        alignment: Alignment.center,
        child: Text(content[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemBuilder: (context, index) => itemBuilder(context, index, ref),
      itemCount: content.length,
    );
  }
}

class PageContent extends ConsumerWidget {

  const PageContent({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageView(
      controller: pageController,
      children: const [
        Center(child: Text("data1"),),
        Center(child: Text("data2"),),
        Center(child: Text("data3"),)
      ],
    );
  }
}