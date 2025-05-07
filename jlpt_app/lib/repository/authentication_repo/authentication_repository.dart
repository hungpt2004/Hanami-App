import 'package:jlpt_app/models/user.dart';
import 'package:jlpt_app/services/authentication_api/authentication_service.dart';

class AuthRepository {
  final AuthService _authService = AuthService();

  Future<User> signInWithEmailPassword(String email, String password) async {
    try {
      return await _authService.signInWithEmailPassword(email, password);
    } catch (error) {
      throw Exception('Đăng nhập thất bại - Lỗi repository: ${error.toString()}');
    }
  }

}