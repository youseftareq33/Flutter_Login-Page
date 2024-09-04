import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';

void main(){
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginPage(),

      theme: ThemeData(
      primaryColor: Colors.black, 
      ),
    );
  }
}