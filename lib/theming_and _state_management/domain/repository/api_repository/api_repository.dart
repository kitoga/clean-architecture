import 'package:clean_architecture/theming_and%20_state_management/domain/model/user.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/request/user_request.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/response/login_response.dart';

abstract class ApiRepositoryInterface {
  Future<User> getUserFromToken(String token);
  Future<LoginResponse> login(LoginRequest login);
  Future<void> logout(String token);
}
