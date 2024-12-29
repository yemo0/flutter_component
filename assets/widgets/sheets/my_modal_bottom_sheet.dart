// 2024-08-06 02:01:47
import 'package:flutter/material.dart';

void myShowModalBottomSheet(BuildContext context, Widget Function(BuildContext) builder) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
    ),
    builder: builder,
    useRootNavigator: true,
  );
}
