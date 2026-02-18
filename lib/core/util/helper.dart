import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  static const String _userIdKey = "USER_ID";

  /// ✅ Save User ID
  Future<void> setUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userIdKey, userId);
    print(' user id store sucessfully  in helper class ${_userIdKey}');
  }

  /// ✅ Get User ID
  Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userIdKey);
  }

  /// ✅ Remove User ID (Logout)
  Future<void> clearUserId() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userIdKey);
  }
}
