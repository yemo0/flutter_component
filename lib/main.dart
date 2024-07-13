import 'package:flutter/material.dart';
import 'package:flutter_component/responsive.dart';
import 'package:flutter_component/ui/desktop_body.dart';
import 'package:flutter_component/ui/mobile_body.dart';
import 'package:flutter_component/widgets_load.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    widgetsLoad();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const Scaffold(
        body: MyResponsive(mobileBody: MobileBody(), desktopBody: DesktopBody()),
      )
      // home: Column(
      //   children: [
      //     ElevatedButton(onPressed: () async {
      //       final code = await rootBundle.loadString("assets/widgets/a.dart");
      //       print(code);
      //     }, child: const Text("click"))
      //   ],
      // ),
    );
  }
}






