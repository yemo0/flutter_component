import 'package:flutter/services.dart';
import 'package:flutter_component/widget_data.dart';

final widgetsLoadData = {};
void widgetsLoad () async {
  
  for (var v in widgetData) {
    for (var element in v.widgetList) {
      if (element.fileName == null) continue;
      element.fileText = await rootBundle.loadString("assets/widgets/${v.widgetName}/${element.fileName}");
    }
  }
}