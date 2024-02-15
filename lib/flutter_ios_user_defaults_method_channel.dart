import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter_ios_user_defaults/flutter_ios_user_defaults_platform_interface.dart';

/// An implementation of [IosUserDefaultsPlatform] that uses method channels.
class MethodChannelIosUserDefaults extends IosUserDefaultsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ios_user_defaults');

  @override
  Future<String?> getString(String key) async {
    String? result = await methodChannel.invokeMethod<String>(
      'get_string',
      {'key': key},
    );
    return result;
  }

  @override
  Future<void> setString(String key, String value) async {
    await methodChannel.invokeMethod(
      'set_string',
      {'key': key, 'value': value},
    );
  }

  @override
  Future<bool?> getBool(String key) async {
    bool? result = await methodChannel.invokeMethod<bool>(
      'get_bool',
      {'key': key},
    );
    return result;
  }

  @override
  Future<void> setBool(String key, bool value) async {
    await methodChannel.invokeMethod(
      'set_bool',
      {'key': key, 'value': value},
    );
  }

  @override
  Future<int?> getInt(String key) async {
    int? result = await methodChannel.invokeMethod<int>(
      'get_int',
      {'key': key},
    );
    return result;
  }

  @override
  Future<void> setInt(String key, int value) async {
    await methodChannel.invokeMethod(
      'set_int',
      {'key': key, 'value': value},
    );
  }

  @override
  Future<double?> getDouble(String key) async {
    double? result = await methodChannel.invokeMethod<double>(
      'get_double',
      {'key': key},
    );
    return result;
  }

  @override
  Future<void> setDouble(String key, double value) async {
    await methodChannel.invokeMethod(
      'set_double',
      {'key': key, 'value': value},
    );
  }
}
