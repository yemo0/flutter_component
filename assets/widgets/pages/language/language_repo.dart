abstract class LanguageRepo {
  Future<String> getLocale();
  Future<bool> setLocale(String locale);
}
