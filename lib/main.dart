import 'package:flutter/material.dart';
import 'package:tugasakhir/view/login.dart';
import 'package:tugasakhir/view/register.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membuat Login',
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
