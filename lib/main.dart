import 'package:dispm3/config/router/router_config.dart';
import 'package:flutter/material.dart';
import 'package:dispm3/presentation/auth/auth.dart';
import 'package:dispm3/model/prueba_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}



// title: "prueba",
      // routes: {
      //   "/model/prueba_model": (context) => const Prueba(),
      // },
      // home: Auth(),