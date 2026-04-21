import 'package:dio/dio.dart';

class Api {

  static final _dio = Dio();

  static Future<String> getToken (String email, String pass) async{
    try{
    final response = await _dio.post(
  
    "https://api.escuelajs.co/api/v1/auth/login",
    data: {
      "email": email,
      "password": pass

    });

    if(response.statusCode != 201){
     return "Error en el login";
    }

    return 'city boy city boy';
    } on DioException {
      return 'Error';
    }
    
    
  }


}