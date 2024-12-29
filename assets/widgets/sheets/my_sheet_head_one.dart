import 'package:flutter/material.dart';

class MySheetHeadOne extends StatelessWidget {
  final String title;
  final bool showClose;
  const MySheetHeadOne({super.key, this.title = "", this.showClose = true});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const Expanded(child: Text("")),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child:
                    Text(title, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: showClose
                    ? InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.close,
                            size: 14,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
