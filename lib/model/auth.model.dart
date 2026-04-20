class AuthModel {
  String accesToken;
  String refreshToken;

  AuthModel({required this.accesToken, required this.refreshToken});

  factory AuthModel.fromJson(Map<String, dynamic> json){
    return AuthModel(
      accesToken: json["acces_Token"] ?? 'no Token',
      refreshToken: json["refresh_Token"] ?? 'no refresh token'
    );
  }
}
