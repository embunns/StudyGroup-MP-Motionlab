import 'package:flutter/material.dart';
import 'package:flutter_application_w3/pages/cart.dart';
import 'package:flutter_application_w3/pages/homescreen.dart';
import 'package:flutter_application_w3/pages/register_page.dart';
import 'package:flutter_application_w3/pages/transaction.dart';
import '/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=>CartPage(),
        '/registerButton': (context)=>LoginPage(),
        '/register': (context)=>RegisterPage(),
        '/login': (context)=>LoginPage(),
        '/loginButton': (context)=>HomeScreen(),
        '/home': (context)=>HomeScreen(),
        '/payment': (context)=>TransactionPage(),
        '/cart': (context)=>CartPage(),
      },
    );
  }
}
