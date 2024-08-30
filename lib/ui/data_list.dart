import 'package:flutter/material.dart';
import 'package:flutter_component/ui/detail_screen.dart';
import 'package:flutter_component/widget_data_model.dart';
import 'package:flutter_component/ui/vertical_tabbar.dart';
import 'package:flutter_component/widget_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataList extends ConsumerWidget {
  const DataList({super.key});

  Widget itemBuilder(BuildContext context, int index, WidgetList data) {
    return Container(
      height: 500,
      width: 350,
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
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    widgetList: data,
                  ),
                ),
              ),
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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: List.generate(data.length, (index) => itemBuilder(context, index, data[index])),
        // children: List.generate(data.length, (index) => Container()),
      ),
    );
  }
}
