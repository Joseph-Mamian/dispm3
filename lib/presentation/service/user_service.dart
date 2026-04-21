import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserService {
  
  Future<void> getUser () async {
    final dio = Dio();
    final storage = FlutterSecureStorage();
    final token = await storage.read(key: 'token');
    final response = dio.get("https://api.escuelajs.co/api/v1/auth/porfile",
    options: Options(
      headers: {
        'Authorization': 'Bearer $token'
      }
    )
    );

  }


}