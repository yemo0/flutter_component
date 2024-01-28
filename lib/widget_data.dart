
import 'package:flutter/material.dart';
import 'package:flutter_component/widget/buttons/button.dart';
import 'package:flutter_component/widget/buttons/raw_material_button.dart';
import 'package:flutter_component/widget/buttons/square.dart';
import 'package:flutter_component/widget/layout/search_1.dart';
import 'package:flutter_component/widget/textFields/outline_textfield.dart';
import 'package:flutter_component/widget/textFields/rimless_textfield.dart';

const List<Map<String, dynamic>> widgetData = [
  {
    "widgetName": "TextField",
    "widgetList": [
      {
        "name": "TextField",
        "widget": TextField(),
      },
      {
        "name": "Rimless",
        "widget": MyRimlessTextField()
      },
      {
        "name": "outline",
        "widget": MyOutlineTextField()
      }
    ]
  },
  {
    "widgetName": "Button",
    "widgetList": [
      {
        "name": "ElevatedButton",
        "widget": MyButton(),
      },
      {
        "name": "MySquareButton",
        "widget": MySquareButton()
      },
      {
        "name": "MyRawMaterialButton",
        "widget": MyRawMaterialButton()
      }
      
    ]
  },
  {
    "widgetName": "Text",
    "widgetList": []
  },
  {
    "widgetName": "Layout",
    "widgetList": [
      {
        "name": "Search1",
        "widget": Search1()
      }
    ]
  }
];






