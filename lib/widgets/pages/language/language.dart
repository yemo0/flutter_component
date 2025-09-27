import 'package:flutter/material.dart';
import 'package:flutter_component/widgets/pages/language/language_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Language {
  final String name;
  final String code;

  Language(this.name, this.code);
}

class LanguagePage extends ConsumerStatefulWidget {
  const LanguagePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LanguagePageState();
}

class _LanguagePageState extends ConsumerState<LanguagePage> {
  final List<Language> languages = [Language('English', 'en'), Language('中文', 'zh')];

  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    final languageState = ref.watch(languageProvider);
    final languageNotif = ref.read(languageProvider.notifier);
    _selectedLanguage ??= languageState.value?.languageCode;

    final isLanguageChanged = _selectedLanguage != languageState.value?.languageCode;

    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            ),
            onPressed: isLanguageChanged
                ? () {
                    languageNotif.setLocale(Locale(_selectedLanguage!));
                    Navigator.pop(context);
                  }
                : null,
            // child: Text(AppLocalizations.of(context)!.save),
            child: const Text("Save"),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              title: Text(languages[index].name),
              tileColor: Theme.of(context).colorScheme.surface,
              trailing: languages[index].code == _selectedLanguage ? const Icon(Icons.check) : null,
              onTap: () {
                setState(() => _selectedLanguage = languages[index].code);
              },
            ),
            itemCount: languages.length,
          ),
        ),
      ),
    );
  }
}
