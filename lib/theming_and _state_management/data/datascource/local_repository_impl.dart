import 'package:clean_architecture/theming_and%20_state_management/domain/model/user.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/repository/local_storage_repository/local_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalRepositoryImpl extends LocalRepositoryInterface {
  static const _pref_token = 'TOKEN';
  static const _pref_username = 'USERNAME';
  static const _pref_name = 'NAME';
  static const _pref_image = 'IMAGE';
  static const _pref_dark_theme = 'IMAGE';

  @override
  Future<void> clearAllData() async {
    // TODO: implement clearAllData
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    throw UnimplementedError();
  }

  @override
  Future<String> getToken() async {
    // TODO: implement getToken
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString(_pref_token);
    throw UnimplementedError();
  }

  @override
  Future<String> saveToken(String token) async {
    // TODO: implement getToken
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_pref_token, token);
    return token;
  }

  @override
  Future<User> getUser() async {
    // TODO: implement getUser
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final username = sharedPreferences.getString(_pref_username);
    final name = sharedPreferences.getString(_pref_name);
    final image = sharedPreferences.getString(_pref_image);

    final user = User(
      username: username!,
      name: name!,
      image: image!,
    );

    return user;
  }

  @override
  Future<User> saveUser(User user) async {
    // TODO: implement saveUser
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_pref_username, user.username);
    sharedPreferences.setString(_pref_name, user.name);
    sharedPreferences.setString(_pref_image, user.image);

    return user;
  }

  @override
  Future<bool> isDarkMode() async {
    // TODO: implement isDarkMode
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getBool(_pref_dark_theme);
    throw UnimplementedError();
  }

  @override
  Future<void> saveDarkMode(bool darkMode) async {
    // TODO: implement saveDarkMode
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_pref_dark_theme, darkMode);
  }
}
