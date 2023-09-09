import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localStorageProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService(ref);
});

class LocalStorageService {
  late SharedPreferences _sharedPreferences;
  final Ref ref;

  LocalStorageService(this.ref) {
    initialisePreference();
  }

  Future<void> initialisePreference() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    try {
      await _sharedPreferences.setString(key, value);
      return true;
    } catch (_) {}
    return false;
  }

  Future<String?> getString(String key) async {
    try {
      return _sharedPreferences.getString(key);
    } catch (_) {}
    return null;
  }
}
