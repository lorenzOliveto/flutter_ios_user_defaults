import 'package:ios_user_defaults/ios_user_defaults_platform_interface.dart';

// Class to interact directly with ios user defaults
class IosUserDefaults {
  static Future<String?> getString(String key) {
    return IosUserDefaultsPlatform.instance.getString(key);
  }

  static Future<void> setString(String key, String value) {
    return IosUserDefaultsPlatform.instance.setString(key, value);
  }

  static Future<bool?> getBool(String key) {
    return IosUserDefaultsPlatform.instance.getBool(key);
  }

  static Future<void> setBool(String key, bool value) {
    return IosUserDefaultsPlatform.instance.setBool(key, value);
  }

  static Future<int?> getInt(String key) {
    return IosUserDefaultsPlatform.instance.getInt(key);
  }

  static Future<void> setInt(String key, int value) {
    return IosUserDefaultsPlatform.instance.setInt(key, value);
  }

  static Future<double?> getDouble(String key) {
    return IosUserDefaultsPlatform.instance.getDouble(key);
  }

  static Future<void> setDouble(String key, double value) {
    return IosUserDefaultsPlatform.instance.setDouble(key, value);
  }
}
