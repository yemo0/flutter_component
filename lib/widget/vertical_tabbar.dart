import 'package:flutter/material.dart';
import 'package:flutter_component/widget/data_list.dart';
import 'package:flutter_component/widget_data.dart';
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
        child: Text(widgetData[index]["widgetName"].toString()),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemBuilder: (context, index) => itemBuilder(context, index, ref),
      itemCount: widgetData.length,
    );
  }
}

class PageContent extends ConsumerWidget {
  const PageContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    List<Widget> page() {
      final page = <Widget>[];
      for (var _ in widgetData) {
        page.add(const DataList());
      }
      return page;
    }

    return PageView(
      controller: pageController,
      children: page()
    );
  }
}