import 'package:flutter/material.dart';
import 'package:flutter_application_w3/pages/cart_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartController1 = Get.put(CartController(), tag: 'product1');
    final cartController2 = Get.put(CartController(), tag: 'product2');

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Icon(Icons.chevron_left, color: Colors.black),
            ),
          ),
          title: const Text(
            "My Cart",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildCartItem(
                    image: "assets/images/product1.png",
                    title: "Mi Band 8 Pro - Brand New",
                    price: "\$54.00",
                    cartController: cartController1, 
                  ),
                  const SizedBox(height: 10),
                  _buildCartItem(
                    image: "assets/images/product2.png",
                    title: "Lycra Men's Shirt",
                    price: "\$12.00",
                    cartController: cartController2, 
                  ),
                ],
              ),
            ),
            _buildBuyNowButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem({
    required String image,
    required String title,
    required String price,
    required CartController cartController,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 110,
              height: 110,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF00623B),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove, color: Color(0xFF00623B)),
                          onPressed: cartController.quantityDecrement,
                        ),
                        Obx(() => Text(
                              "${cartController.quantity.value}",
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            )),
                        IconButton(
                          icon: const Icon(Icons.add, color: Color(0xFF00623B)),
                          onPressed: cartController.quantityIncrement,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuyNowButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00623B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/payment');
          },
          child: const Text(
            "Buy Now",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
