import 'package:flutter/material.dart';

class SideMenuModel {
  IconData iconData;
  String title;
  SideMenuModel({required this.iconData, required this.title});
}

class SideMenu extends StatefulWidget {
  final List<SideMenuModel> menuItems;
  const SideMenu({super.key, required this.menuItems});

  @override
  State<StatefulWidget> createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ListView.builder(
        itemCount: widget.menuItems.length,
        itemBuilder: (context, index) {
          return buildMenuEntry(index);
        },
      ),
    );
  }

  Widget buildMenuEntry(int index) {
    final isSelected = index == selectedIndex;
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
      decoration: BoxDecoration(
      color: isSelected ? Theme.of(context).colorScheme.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.none,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(widget.menuItems[index].iconData, color: isSelected ? Colors.black : Colors.grey),
              ),
              Text(
                widget.menuItems[index].title,
                style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
