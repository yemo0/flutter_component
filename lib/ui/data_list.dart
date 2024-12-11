import 'package:flutter/material.dart';
import 'package:flutter_component/common.dart';
import 'package:flutter_component/widget_data_model.dart';
import 'package:flutter_component/widget_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DataList extends ConsumerWidget {
  const DataList({super.key});

  Widget itemBuilder(BuildContext context, int index, WidgetList data) {
    return Container(
      // height: 400,
      // width: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              child: data.widget,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            height: 40,
            width: double.infinity,
            child: InkWell(
              onTap: () => context.goNamed("detail", extra: data),
              child: Container(
                decoration:
                    const BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.all(Radius.circular(10))),
                alignment: Alignment.center,
                child: Text(data.name),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<WidgetList> data = widgetData[ref.read(currentIndex.notifier).state].widgetList;
    if (data.isEmpty) {
      return const Center(
        child: Text("Data is empty"),
      );
    }

    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (constraints.maxWidth / 300).floor(),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => itemBuilder(context, index, data[index]),
        itemCount: data.length,
      );
    });
  }
}
