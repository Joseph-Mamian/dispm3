import 'package:dispm3/presentation/auth/auth.dart';
import 'package:dispm3/presentation/user/user_screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

final storage = FlutterSecureStorage();
final appRouter = GoRouter(
  initialLocation: "/",
  redirect: (context, state) async{
    final token = await storage.read(key: 'token');
    final isLoadingRoute = state.matchedLocation == "/";
    if (token == null){
      return isLoadingRoute ? null : "/";
    }

    if (token.isNotEmpty && isLoadingRoute){
      return '/user';
    }
    
  },
routes: [
  GoRoute(
    path: '/',
    name: 'login',
    builder: (context, state) => Auth(),

  ),
  GoRoute(
    path: 'user',
    name: "user",
    builder: (context, state) => UserScreen()
  ),
  
    
]

);
