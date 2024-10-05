import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // Private constructor to prevent instantiation
  SharedPrefHelper._();

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  static SharedPreferences? _sharedPreferences;

  // Initialize SharedPreferences asynchronously
  static Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  /// Removes a value from SharedPreferences with the given [key].
  static Future<void> removeData(String key) async {
    debugPrint('SharedPrefHelper: Removing data with key: $key');
    await _sharedPreferences?.remove(key);
  }

  /// Clears all data in the SharedPreferences.
  static Future<void> clearAllData() async {
    debugPrint('SharedPrefHelper: Clearing all data');
    await _sharedPreferences?.clear();
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  static Future<void> setData(String key, dynamic value) async {
    debugPrint(
        'SharedPrefHelper: Setting data with key: $key and value: $value');
    if (_sharedPreferences == null) return;

    if (value is String) {
      await _sharedPreferences!.setString(key, value);
    } else if (value is int) {
      await _sharedPreferences!.setInt(key, value);
    } else if (value is bool) {
      await _sharedPreferences!.setBool(key, value);
    } else if (value is double) {
      await _sharedPreferences!.setDouble(key, value);
    } else {
      debugPrint('SharedPrefHelper: Unsupported value type');
    }
  }

  /// Gets a bool value from SharedPreferences with the given [key].
  static Future<bool> getBool(String key) async {
    debugPrint('SharedPrefHelper: Getting bool with key: $key');
    return _sharedPreferences?.getBool(key) ?? false;
  }

  /// Gets a double value from SharedPreferences with the given [key].
  static Future<double> getDouble(String key) async {
    debugPrint('SharedPrefHelper: Getting double with key: $key');
    return _sharedPreferences?.getDouble(key) ?? 0.0;
  }

  /// Gets an int value from SharedPreferences with the given [key].
  static Future<int> getInt(String key) async {
    debugPrint('SharedPrefHelper: Getting int with key: $key');
    return _sharedPreferences?.getInt(key) ?? 0;
  }

  /// Gets a String value from SharedPreferences with the given [key].
  static Future<String> getString(String key) async {
    debugPrint('SharedPrefHelper: Getting string with key: $key');
    return _sharedPreferences?.getString(key) ?? '';
  }

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  static Future<void> setSecuredString(String key, String value) async {
    debugPrint('SharedPrefHelper: Setting secured string with key: $key');
    await _secureStorage.write(key: key, value: value);
  }

  /// Gets a String value from FlutterSecureStorage with the given [key].
  static Future<String> getSecuredString(String key) async {
    debugPrint('SharedPrefHelper: Getting secured string with key: $key');
    return await _secureStorage.read(key: key) ?? '';
  }

  /// Clears all data in the FlutterSecureStorage.
  static Future<void> clearAllSecuredData() async {
    debugPrint('SharedPrefHelper: Clearing all secured data');
    await _secureStorage.deleteAll();
  }
}
