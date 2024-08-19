

import 'package:flutter/material.dart';
import 'package:flutter_component/widget_data_model.dart';
import 'package:flutter_component/ui/vertical_tabbar.dart';
import 'package:flutter_component/widget_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataList extends ConsumerWidget {
  const DataList({super.key});


  Widget itemBuilder(BuildContext context, int index, List<WidgetList> data) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Container(
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            child: data[index].widget,
          ), ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.greenAccent 
              ),
              alignment: Alignment.center,
              child:  Text(data[index].name),
            ),
          ),
          // SizedBox(
          //   height: 40,
          //   width: double.infinity,
          //   child: ElevatedButton(onPressed: () {}, child: const Text("View Code")),
          // )
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
      child: GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 400, mainAxisSpacing: 5, crossAxisSpacing: 5),
       itemBuilder: (context, index) => itemBuilder(context, index, data), itemCount: data.length,),
    );
  }
}