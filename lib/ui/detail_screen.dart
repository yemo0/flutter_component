import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_component/widget_data_model.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class DetailScreen extends StatelessWidget {
  final WidgetList widgetList;
  const DetailScreen({super.key, required this.widgetList});

  @override
  Widget build(BuildContext context) {
    final controller = CodeController(
      text: widgetList.fileText ?? "", // Initial code
      language: dart,
    );
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: widgetList.fileText ?? ""));
            },
            icon: const Icon(Icons.copy),
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
              child: Center(
            child: widgetList.widget,
          )),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: CodeTheme(data: CodeThemeData(styles: monokaiSublimeTheme), child: CodeField(controller: controller, expands: true,)),
            ),
          )
        ],
      ),
    );
  }
}
