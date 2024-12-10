import 'package:flutter/material.dart';
import 'package:flutter_week_2/pages/login_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>const LoginPage(),
        '/register': (context)=>const LoginPage(),
      },
    );
  }
}