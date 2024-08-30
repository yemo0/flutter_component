import 'package:flutter/material.dart';
import 'package:flutter_component/widget_data_model.dart';
import 'package:flutter_component/widgets/navigation/side_menu.dart';
import 'package:flutter_component/widgets/buttons/button.dart';
import 'package:flutter_component/widgets/buttons/raw_material_button.dart';
import 'package:flutter_component/widgets/buttons/square.dart';
import 'package:flutter_component/widgets/textFields/outline_textfield.dart';
import 'package:flutter_component/widgets/textFields/rimless_textfield.dart';

import 'widgets/cards/board_setting.dart';

final List<WidgetDataModel> widgetData = [
  WidgetDataModel.fromJson(
    {
      "widgetName": "textFields",
      "widgetList": [
        {"name": "Rimless", "widget": const MyRimlessTextField(), "fileName": "rimless_textfield.dart"},
        {"name": "outline", "widget": const MyOutlineTextField(), "fileName": "outline_textfield.dart"},
      ]
    },
  ),
  WidgetDataModel.fromJson({
    "widgetName": "buttons",
    "widgetList": [
      {
        "name": "ElevatedButton",
        "widget": const MyButton(),
        "fileName": "button.dart",
      },
      {"name": "MySquareButton", "widget": const MySquareButton(), "fileName": "square.dart"},
      {"name": "MyRawMaterialButton", "widget": const MyRawMaterialButton(), "fileName": "raw_material_button.dart"},
    ]
  }),
  WidgetDataModel.fromJson({
    "widgetName": "navigation",
    "widgetList": [
      {
        "name": "SideNav",
        "widget": SideMenu(
          menuItems: [
            SideMenuModel(iconData: Icons.abc, title: "home"),
            SideMenuModel(iconData: Icons.abc, title: "setting"),
          ],
        ),
        "fileName": "side_menu.dart",
      }
    ]
  }),
  WidgetDataModel.fromJson({
    "widgetName": "cards",
    "widgetList": [
      {
        "name": "BoardSetting",
        "widget": const MyBoardSetting(title: "11", children: [
          ListTile(
            leading: Icon(
              Icons.apple,
            ),
            title: Text("data"),
            // contentPadding: EdgeInsets.zero,
          ),
          ListTile(
            leading: Icon(Icons.tiktok),
            title: Text("data"),
            // contentPadding: EdgeInsets.zero,
          )
        ]),
        "fileName": "board_setting.dart"
      },
    ]
  })
];
