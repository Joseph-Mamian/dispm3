import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  label: Text('volver a home'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
