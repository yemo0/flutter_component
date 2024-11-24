import 'package:flutter/material.dart';

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
          // SideMenu(menuItems: [SideMenuModel(iconData: Icons.abc, title: "abd"), SideMenuModel(iconData: Icons.abc, title: "abc")])
          ElevatedButton(onPressed: () {}, style: TButton.myStyle.copyWith(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ), child: const Text("data"),)
        ],
      )
    );
  }
}

class TButton {
  static ButtonStyle myStyle = ElevatedButton.styleFrom(
  shape: const CircleBorder(),
  padding: const EdgeInsets.all(20),
  backgroundColor: Colors.blue
);
}

