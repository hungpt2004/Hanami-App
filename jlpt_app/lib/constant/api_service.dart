import 'package:dio/dio.dart';

class ApiSetting {
  static const baseUrl = 'http://localhost:8000';
  final Dio dio;
  ApiSetting() : dio = Dio(BaseOptions(baseUrl: baseUrl));
}