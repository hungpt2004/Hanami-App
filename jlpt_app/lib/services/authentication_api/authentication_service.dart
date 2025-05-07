import 'package:dio/dio.dart';
import 'package:jlpt_app/constant/api_service.dart';
import 'package:jlpt_app/models/user.dart';

class AuthService {

  // Sign In
  Future<User> signInWithEmailPassword(String email, String password) async {
    try {
      final response = await ApiSetting().dio
      .post('/login',
      data: {'email':email, 'password':password},
      options: Options(headers: {'Content-Type':'application/json'})
      );
      if (response.statusCode == 200 && response.data.user) {
        return User.fromMap(response.data.user);
      } else {
        throw Exception('Đăng nhập thất bại: ${response.statusMessage}');
      }
    } on DioException catch (error) {
      throw Exception('Đăng nhập thất bại: ${error.message}');
    }
  }

  // Sign Up

}