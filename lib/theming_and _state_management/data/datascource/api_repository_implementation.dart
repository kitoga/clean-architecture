import 'package:clean_architecture/theming_and%20_state_management/domain/exception/auth_exception.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/model/user.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/repository/api_repository/api_repository.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/response/login_response.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/request/user_request.dart';

class ApiRepositoryImpl extends ApiRepositoryInterface {
  @override
  Future<User> getUserFromToken(String token) async {
    // TODO: implement getUserFromToken
    await Future.delayed(Duration(seconds: 3));
    if (token == 'AA111') {
      return User(
        name: 'Steve jobs',
        username: 'stevejobs',
        image: 'assets/images/laura.jpg',
      );
    } else if (token == 'AA222') {
      return User(
        name: 'Elon Musk',
        username: 'elonmusk',
        image: 'assets/images/laura.jpg',
      );
    }
    throw AuthException();
  }

  @override
  Future<LoginResponse> login(LoginRequest login) async {
    // TODO: implement login
    await Future.delayed(Duration(seconds: 3));
    if (login.username == 'steve' && login.password == 'jobs') {
      LoginResponse(
        'AA111',
        User(
          name: 'Steve jobs',
          username: 'stevejobs',
          image: 'assets/images/laura.jpg',
        ),
      );
    }
    if (login.username == 'elon' && login.password == 'musk') {
      LoginResponse(
        'AA222',
        User(
          name: 'Elon Musk',
          username: 'elonmusk',
          image: 'assets/images/laura.jpg',
        ),
      );
    }

    throw AuthException();
  }

  @override
  Future<void> logout(String token) async {
    // TODO: implement logout
    print('removing token from server');
    return;
  }
}
