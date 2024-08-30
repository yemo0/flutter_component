import 'package:flutter/material.dart';
import 'package:flutter_component/widgets/navigation/side_menu.dart';

// class TestScreen  extends StatelessWidget{}

class TestScreen extends StatelessWidget {
const TestScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEST"),
      ),
      body: Row(
        children: [
          SideMenu(menuItems: [SideMenuModel(iconData: Icons.abc, title: "abd"), SideMenuModel(iconData: Icons.abc, title: "abc")])
        ],
      )
    );
  }
}