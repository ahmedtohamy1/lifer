/* import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rest_app/core/utils/shared_pref_keys.dart';
import 'package:rest_app/features/login/data/models/store_model.dart';
import 'package:rest_app/features/login/data/models/user_model.dart';

class UserManager {
  static final UserManager _instance = UserManager._internal();
  static const _userKey = SharedPrefKeys.user; // Key for storing UserModel

  UserModel? _user;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  factory UserManager() {
    return _instance;
  }

  UserManager._internal();

  Future<void> init() async {
    String? userJson = await _secureStorage.read(key: _userKey);
    if (userJson != null) {
      _user = UserModel.fromJson(jsonDecode(userJson));
    }
  }

  UserModel? get user => _user;

  Future<void> setUser(UserModel user) async {
    _user = user;
    await _secureStorage.write(
      key: _userKey,
      value: jsonEncode(user.toJson()),
    );
  }

  Future<void> clearUser() async {
    _user = null;
    await _secureStorage.delete(key: _userKey);
  }
}

extension UserModelSerialization on UserModel {
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'auth_token': authToken,
      'name': name,
      'email': email,
      'phone': phone,
      'stores': stores.map((store) => store.toJson()).toList(),
    };
  }

  static UserModel fromJson(Map<String, dynamic> json) {
    var storesList = json['stores'] as List;
    List<StoreModel> stores =
        storesList.map((i) => StoreModel.fromJson(i)).toList();

    return UserModel(
      id: json['id'],
      authToken: json['auth_token'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      stores: stores,
    );
  }
}
 */