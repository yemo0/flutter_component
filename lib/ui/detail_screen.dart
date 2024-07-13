import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_component/widget_data_model.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class DetailScreen extends StatelessWidget {
  final WidgetList widgetList;
  const DetailScreen({super.key, required this.widgetList});

  @override
  Widget build(BuildContext context) {
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
              child: SyntaxView(
                  code: widgetList.fileText ?? "", // Code text
                  syntax: Syntax.DART, // Language
                  syntaxTheme: SyntaxTheme.vscodeDark(), // Theme
                  fontSize: 15.0, // Font size
                  withZoom: true, // Enable/Disable zoom icon controls
                  withLinesCount: true, // Enable/Disable line number
                  expanded: true, // Enable/Disable container expansion
                  selectable: true // Enable/Disable code text selection
                  ),
            ),
          )
        ],
      ),
    );
  }
}
