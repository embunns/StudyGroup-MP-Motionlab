import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAppBar(),
                const SizedBox(height: 30),
                _buildProductImage(),
                const SizedBox(height: 20),
                _buildProductDetails(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildAddToBagButton(),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.chevron_left,
            size: 33,
          ),
        ),
        const Text(
          "Product Detail",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Iconsax.heart5,
          size: 27,
          color: Colors.red,
        ),
      ],
    );
  }

  Widget _buildProductImage() {
    return Image.asset(
      controller.productImage,
      width: double.infinity,
      height: 401,
      fit: BoxFit.cover,
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          controller.productName,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          controller.productPrice,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF00623B),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          controller.productDescription,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildAddToBagButton() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00623B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            Get.toNamed('/cart');
          },
          child: const Text(
            "Add to Bag",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
