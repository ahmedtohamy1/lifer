/* import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rest_app/core/utils/shared_pref_keys.dart';
import 'package:rest_app/features/login/data/models/store_model.dart';

class StoreManager {
  static final StoreManager _instance = StoreManager._internal();
  static const _storeKey = SharedPrefKeys.store;

  StoreModel? _store;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  factory StoreManager() {
    return _instance;
  }

  StoreManager._internal();

  Future<void> init() async {
    String? storeJson = await _secureStorage.read(key: _storeKey);
    if (storeJson != null) {
      _store = StoreModel.fromJson(jsonDecode(storeJson));
    }
  }

  StoreModel? get store => _store;

  Future<void> setStore(StoreModel store) async {
    _store = store;
    await _secureStorage.write(
      key: _storeKey,
      value: jsonEncode(store.toJson()),
    );
  }

  Future<void> clearStore() async {
    _store = null;
    await _secureStorage.delete(key: _storeKey);
  }
}
 */