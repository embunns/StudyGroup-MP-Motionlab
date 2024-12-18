import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatefulWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productDescription;

  ProductDetail({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
  });

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late String productName;
  late String productImage;
  late String productPrice;
  late String productDescription;

  @override
  void initState() {
    super.initState();
    productName = widget.productName;
    productImage = widget.productImage;
    productPrice = widget.productPrice;
    productDescription = widget.productDescription;
  }

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
          onTap: () => Navigator.pop(context),
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

  // Function untuk Gambar Produk
  Widget _buildProductImage() {
    return Image.asset(
      productImage,
      width: double.infinity,
      height: 401,
      fit: BoxFit.cover,
    );
  }

  // Function untuk Detail Produk
  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          productPrice,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF00623B),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          productDescription,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  // Function untuk Tombol "Add to Bag" Sticky di Bawah
  Widget _buildAddToBagButton() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white, // Warna background tombol
      child: SizedBox(
        width: double.infinity,
        height: 60, // Tinggi tombol lebih besar
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00623B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // Border lebih tumpul
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/cart'); // Navigasi ke halaman cart
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
