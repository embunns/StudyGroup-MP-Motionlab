import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/cart.dart';
import 'pages/homescreen.dart';
import 'pages/register_page.dart';
import 'pages/transaction.dart';
import 'pages/login_page.dart';
import 'binding/home_binding.dart';
import 'binding/product_detail_binding.dart';
import 'pages/product_detail.dart';
import 'binding/transaction_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/register',
          page: () => RegisterView(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeBinding(), 
        ),
        GetPage(
          name: '/transaction',
          page: () => TransactionView(),
          binding: TransactionBinding(),
        ),
        GetPage(
          name: '/product-detail',
          page: () => ProductDetailView(),
          binding: ProductDetailBinding(),
        ),

        GetPage(
          name: '/cart',
          page: () => CartPage(),
        ),
        GetPage(
          name: '/product-detail',
          page: () => ProductDetailView(),
          binding: ProductDetailBinding(),
        ),
      ],
    );
  }
}
