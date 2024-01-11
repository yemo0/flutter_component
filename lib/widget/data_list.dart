

import 'package:flutter/material.dart';
import 'package:flutter_component/widget/vertical_tabbar.dart';
import 'package:flutter_component/widget_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataList extends ConsumerWidget {
  const DataList({super.key});


  Widget itemBuilder(BuildContext, int index, List data) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Center(
            child: data[index]['widget'],
          ), ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.greenAccent 
              ),
              alignment: Alignment.center,
              child:  Text(data[index]['name']),
            ),
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: const Text("View Code")),
          )
        ],
      ),
    );
  }

  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List data = widgetData[ref.read(currentIndex.notifier).state]["widgetList"];
    if (data.isEmpty) {
      return const Center(
        child: Text("Data is empty"),
      );
    }


    return GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 400),
     itemBuilder: (context, int) => itemBuilder(context, int, data), itemCount: data.length,);
  }
}