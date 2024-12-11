import 'package:flutter_component/home.dart';
import 'package:flutter_component/root_layout.dart';
import 'package:flutter_component/ui/detail_screen.dart';
import 'package:go_router/go_router.dart';

import '../widget_data_model.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return RootLayout(child: child);
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => const HomeScreen(), routes: [
          GoRoute(
            path: 'detail',
            name: 'detail',
            builder: (context, state) {
              final widgetList = state.extra as WidgetList;
              return DetailScreen(widgetList: widgetList);
            },
          )
        ]),
      ],
    )
  ],
);
