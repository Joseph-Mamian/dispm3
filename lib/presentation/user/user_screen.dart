// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dispm3/presentation/service/user_service.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

   Future<void> getData () async {
    UserService().getUser();
   }

  @override
  void initState() {
    super.initState();
    getData();
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hola chigga"),
        


      ),

    );
  }
}