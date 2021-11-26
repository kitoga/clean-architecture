import 'package:clean_architecture/theming_and%20_state_management/domain/model/user.dart';

class LoginResponse {
  final String token;
  final User user;

  LoginResponse(this.token, this.user);
}
