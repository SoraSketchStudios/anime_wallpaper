import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceController {
  static late SharedPreferences _sharedPreferences;

  static Future<void> initSharePreference() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static bool getIsFirst() {
    return _sharedPreferences.getBool("isFirst") ?? true;
  }

  static void setIsFirst() {
    _sharedPreferences.setBool("isFirst", false);
  }
}
