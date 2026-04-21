import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dispm3/model/auth_model.dart';

class AuthService {
  static final _dio = Dio();
  static final _storage = FlutterSecureStorage();
  static final url = 'https://api.escuelajs.co/api/v1/auth/login';

  static Future<String?> getToken(String username, String password) async {
    try {
      final response = await _dio.post(
        url,
        data: {'email': username, 'password': password},
      );
      if (response.statusCode != 201 && response.statusCode != 200) {
        return 'Respuesta inesperada del servidor.';
      }

      AuthModel res = AuthModel.fromJson(response.data);
      if (res.accessToken == 'No token') {
        return 'Acceso incorrecto';
      }

      await _storage.write(key: 'token', value: res.accessToken);

      return null;
    } on DioException catch (e) {
      /*
        100 -> 199 : informativos
        200 -> 299 : success
        300 - 399 : redirection
        400 -. 499 : errores del cliente
        500 -> 599 : errores del services
      */

      if (e.response != null) {
        if (e.response?.statusCode == 401) {
          return 'Usuario o contraseña incorrectos.';
        }
        return 'Error del servidor: ${e.response?.statusCode}';
      } else {
        return 'Error de red. Revisa tu conexión a internet.';
      }
    }
  }
}
