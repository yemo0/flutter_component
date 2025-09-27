import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Language {
  final String name;
  final String code;

  Language(this.name, this.code);
}

class LanguagePage extends ConsumerStatefulWidget {
  const LanguagePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => LanguagePageState();
}

class LanguagePageState extends ConsumerState<LanguagePage> {
  final List<Language> languages = [Language('English', 'en'), Language('中文', 'zh')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            ),
            onPressed: () {},
            child: const Text("a"),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
