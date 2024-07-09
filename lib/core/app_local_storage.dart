import 'package:shared_preferences/shared_preferences.dart';

class AppLocal {
  static String imagekey = 'Image_path';
  static String namekey = 'Name_key';
  static cacheImage(String path) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(imagekey, path);
  }

  static Future<String> getImag() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(imagekey) ?? '';
  }

  static cacheName(String data) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(namekey, data);
  }

  static Future<String> getName() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(namekey) ?? '';
  }
}
