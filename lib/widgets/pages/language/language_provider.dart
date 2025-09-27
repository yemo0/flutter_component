import 'package:flutter/material.dart';
import 'package:flutter_component/widgets/pages/language/language_repo.dart';
import 'package:flutter_component/widgets/pages/language/language_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

@riverpod
class Language extends _$Language {
  @override
  Future<Locale> build() async {
    final languageRepo = ref.read(languageRepoProvider);
    final localeCode = await languageRepo.getLocale();
    return Locale(localeCode);
  }

  void setLocale(Locale locale) async {
    await ref.read(languageRepoProvider).setLocale(locale.languageCode);
    state = AsyncValue.data(locale);
  }

  Locale getLocale() {
    return state.value ?? const Locale('en');
  }
}

final languageRepoProvider = Provider<LanguageRepo>((ref) => LanguageRepoImpl());
