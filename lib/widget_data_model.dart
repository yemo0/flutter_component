// To parse this JSON data, do
//
//     final widgetDataModel = widgetDataModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

WidgetDataModel widgetDataModelFromJson(String str) => WidgetDataModel.fromJson(json.decode(str));

String widgetDataModelToJson(WidgetDataModel data) => json.encode(data.toJson());

class WidgetDataModel {
    String widgetName;
    List<WidgetList> widgetList;

    WidgetDataModel({
        required this.widgetName,
        required this.widgetList,
    });

    factory WidgetDataModel.fromJson(Map<String, dynamic> json) => WidgetDataModel(
        widgetName: json["widgetName"],
        widgetList: List<WidgetList>.from(json["widgetList"].map((x) => WidgetList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "widgetName": widgetName,
        "widgetList": List<dynamic>.from(widgetList.map((x) => x.toJson())),
    };
}

class WidgetList {
    String name;
    Widget widget;
    String? fileName;
    String? fileText;

    WidgetList({
        required this.name,
        required this.widget,
        this.fileName,
        this.fileText,
    });

    factory WidgetList.fromJson(Map<String, dynamic> json) => WidgetList(
        name: json["name"],
        widget: json["widget"],
        fileName: json["fileName"],
        fileText: json["fileText"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "widget": widget,
        "fileName": fileName,
        "fileText": fileText,
    };
}
