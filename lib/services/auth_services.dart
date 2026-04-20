import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthServices {
  static final _dio = Dio();
  static final _storage = FlutterSecureStorage();
  static final url = 'https://api.escuelajs.co/api/v1/auth/login';

  static Future<>
}
