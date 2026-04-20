import 'package:flutter/material.dart';
import 'package:dispm4/presentation/auth/auth.dart';
import 'package:dispm4/model/prueba_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "prueba",
      routes: {
        "/model/prueba_model": (context) => const Prueba(),
      },
      home: Auth(),
    );
  }
}
