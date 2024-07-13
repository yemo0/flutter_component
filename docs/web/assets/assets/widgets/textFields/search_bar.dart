import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MySearchBar extends ConsumerWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
      return SearchBar(
        controller: controller,
        onTap: () {
          controller.openView();
        },
        onChanged: (value) {
          controller.openView();
        },
        leading: const Icon(Icons.search),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        trailing: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.wb_sunny_outlined)),
        ],
      );
    }, suggestionsBuilder: (BuildContext context, SearchController controller) {
      return List<ListTile>.generate(5, (int index) {
        return ListTile(
          title: Text(index.toString()),
        );
      });
    });
  }
}
