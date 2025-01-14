import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Iconsax.menu_1, size: 24),
                  Image.asset("assets/images/logo.png", height: 47),
                  InkWell(
                    onTap: () => Get.toNamed('/cart'),
                    child: const Icon(Iconsax.shopping_bag4, size: 24),
                  ),
                ],
              ),
              SizedBox(height: 40),
              // Main Text
              Text(
                "Our way of loving\nyou back",
                style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 40),
              // Search bar
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(26.5),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // Category Selection
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategory("All", true),
                    SizedBox(width: 10),
                    _buildCategory("Watch", false),
                    SizedBox(width: 10),
                    _buildCategory("Shirt", false),
                    SizedBox(width: 10),
                    _buildCategory("Shoes", false),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Best Seller Text
              Text(
                "Our Best Seller",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              // Product Grid
              Expanded(
                child: Obx(
                  () => GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.64,
                    children: controller.products.map((product) {
                      return GestureDetector(
                        onTap: () => controller.goToProductDetail(product),
                        child: _buildProductCard(product),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF00623B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_15),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.frame_1),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(String category, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF00623B) : Colors.grey[200],
        borderRadius: BorderRadius.circular(22.5),
      ),
      child: Text(
        category,
        style: GoogleFonts.nunitoSans(
          color: isSelected ? Colors.white : Color(0xFF353535),
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildProductCard(Map<String, String> product) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              product['image']!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product['name']!,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.88,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product['price']!,
                      style: GoogleFonts.poppins(
                        color: Color(0xFF00623B),
                        fontWeight: FontWeight.normal,
                        fontSize: 17.35,
                      ),
                    ),
                    Icon(Icons.favorite, color: Colors.grey, size: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
