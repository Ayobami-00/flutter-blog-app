import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferenceService {
  static Future<void> addStringToSp(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String> getStringValueFromSp(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String stringValue = prefs.getString(key);
    return stringValue;
  }

  static Future<void> addBoolToSp(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  static Future<bool> getBoolValuesFromSp(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool boolValue = prefs.getBool(key);
    return boolValue;
  }
}
