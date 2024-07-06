import 'package:shared_preferences/shared_preferences.dart';

class AppLocal {
  static String imagekey = 'Image_path';
  static cacheImage(String path) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(imagekey, path);
  }

  static Future<String> getImag() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(imagekey) ?? '';
  }
}
