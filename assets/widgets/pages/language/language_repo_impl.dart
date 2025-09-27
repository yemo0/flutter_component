import 'package:flutter_component/widgets/pages/language/language_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageRepoImpl implements LanguageRepo {
  @override
  Future<String> getLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final locale = prefs.getString('locale');
    return locale ?? 'en';
  }

  @override
  Future<bool> setLocale(String locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('locale', locale);
  }
}
