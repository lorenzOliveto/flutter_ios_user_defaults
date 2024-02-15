import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:flutter_ios_user_defaults/flutter_ios_user_defaults_method_channel.dart';

abstract class IosUserDefaultsPlatform extends PlatformInterface {
  /// Constructs a IosUserDefaultsPlatform.
  IosUserDefaultsPlatform() : super(token: _token);

  static final Object _token = Object();

  static IosUserDefaultsPlatform _instance = MethodChannelIosUserDefaults();

  /// The default instance of [IosUserDefaultsPlatform] to use.
  ///
  /// Defaults to [MethodChannelIosUserDefaults].
  static IosUserDefaultsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IosUserDefaultsPlatform] when
  /// they register themselves.
  static set instance(IosUserDefaultsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getString(String key) {
    throw UnimplementedError('getString(String key) has not been implemented.');
  }

  Future<void> setString(String key, String value) {
    throw UnimplementedError(
        'setString(String key, String value) has not been implemented.');
  }

  Future<bool?> getBool(String key) {
    throw UnimplementedError('getBool(String key) has not been implemented.');
  }

  Future<void> setBool(String key, bool value) {
    throw UnimplementedError(
        'setBool(String key, bool value) has not been implemented.');
  }

  Future<int?> getInt(String key) {
    throw UnimplementedError('getInt(String key) has not been implemented.');
  }

  Future<void> setInt(String key, int value) {
    throw UnimplementedError(
        'setInt(String key, int value) has not been implemented.');
  }

  Future<double?> getDouble(String key) {
    throw UnimplementedError('getDouble(String key) has not been implemented.');
  }

  Future<void> setDouble(String key, double value) {
    throw UnimplementedError(
        'setDouble(String key, double value) has not been implemented.');
  }
}
