
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreference = SharedPreferencesHelper();

class SharedPreferencesHelper {
late SharedPreferences _sharedPreferences;
static const String USER_NAME = "userName";
static const String USER_EMAIL = "userEmail";
static const String USER_PHONE = "userPhone";
static const String USER_PASSWORD = "userPassword";
static const String AUTH_STATUS = "authStatus";


init() async {
  _sharedPreferences = await SharedPreferences.getInstance();
}
Future<bool> get authStatus async {
  return _sharedPreferences.getBool(AUTH_STATUS) ?? false;
}
void saveAuthStatus(bool value){
  _sharedPreferences.setBool(AUTH_STATUS, value);
}

 Future<void>saveUserName(String userName) async {
   _sharedPreferences.setString(USER_NAME, userName);
}

 Future<void>saveUserEmail(String userEmail) async {
   _sharedPreferences.setString(USER_EMAIL, userEmail);
}

 Future<void>saveUserPhone(String userPhone) async {
   _sharedPreferences.setString(USER_PHONE, userPhone);
}

 Future<void>saveUserPassword(String userPassword) async {
   _sharedPreferences.setString(USER_PASSWORD, userPassword);
}

String? get getUserName{
  return _sharedPreferences.getString(USER_NAME);
}

String? get getUserEmail{
  return _sharedPreferences.getString(USER_EMAIL);
}

String? get getUserPhone{
  return _sharedPreferences.getString(USER_PHONE);
}

String? get getUserPassword{
  return _sharedPreferences.getString(USER_PASSWORD);
}
}