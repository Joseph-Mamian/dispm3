// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Text("Hola Mundo"),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login>{
  final _keyForm = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool loading = false;

  void _login (BuildContext context) async{
    if(loading){
      return;
    }

    if(!_keyForm.currentState!.validate()){
      ScaffoldMessenger
      .of(context)
      .showSnackBar(const SnackBar(content: Text("llena los campos chigga")));
    }
    setState(() {
      loading = true;
    });

    if(!_keyForm.currentState!.validate()){
      ScaffoldMessenger
      .of(context)
      .showSnackBar(const SnackBar(content: Text("llena los campos chigga")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _keyForm ,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Correo",
                    prefixIcon: Icon(Icons.mail)
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => value!.isEmpty || value == '' ? 
                  'error ': null,
                ),


                const SizedBox(height: 8,),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    prefixIcon: Icon(Icons.lock_sharp)
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (value) => value!.isEmpty || value == '' ? 
                  'error ': null,
                ),

                const SizedBox(height: 8,),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: loading ? null: () => _login(context), 
                    icon:
                    loading ? CircularProgressIndicator():
                     Icon(Icons.door_back_door), 
                    label: Text("entrar")),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}