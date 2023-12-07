import 'package:core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SharedPreferenceApp {
  late SharedPreferences _prefs;
  Future<int> init() async {
    _prefs = await SharedPreferences.getInstance();
    if (DateTime.now().day.toString() != _prefs.getString("date")) {
      _prefs.setString("date", DateTime.now().day.toString());
      await _prefs.setInt("times", 0);
      return 0;
    }
    return _prefs.getInt("times") ?? 0;
  }

  Future<int> increaseTime() async {
    final int? oldTimes = _prefs.getInt("times");
    _prefs.setInt("times", (oldTimes ?? 0) + 1);
    return (oldTimes ?? 0) + 1;
  }
}
