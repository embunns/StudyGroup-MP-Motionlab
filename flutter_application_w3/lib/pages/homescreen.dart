import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/pages/product_detail.dart';  

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> products = [
    {
      'image': 'assets/images/product1.png',
      'name': 'Mi Band 8 Pro',
      'price': '\$54.00',
      'description': 'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
    },
    {
      'image': 'assets/images/product2.png',
      'name': 'Lycra Men\'s Shirt',
      'price': '\$12.00',
      'description': 'Comfortable and stylish men\'s shirt',
    },
    {
      'image': 'assets/images/product3.png',
      'name': 'Siberia 800',
      'price': '\$45.00',
      'description': 'Gaming headset with superior sound quality',
    },
    {
      'image': 'assets/images/product4.png',
      'name': 'Strawberry Frapucino',
      'price': '\$35.00',
      'description': 'Delicious strawberry flavored frappuccino',
    },
  ];

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
                  Icon(Icons.menu, size: 24),
                  Image.asset("assets/images/logo.png", height: 47),
                  Icon(Icons.shopping_bag, size: 24),
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
                    _buildCategory("Watch", false),
                    _buildCategory("Shirt", false),
                    _buildCategory("Shoes", false),
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
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.64,
                  children: products.map((product) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                              productName: product['name']!,
                              productImage: product['image']!,
                              productPrice: product['price']!,
                              productDescription: product['description']!,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 160,
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
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
                                mainAxisSize: MainAxisSize.min,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        product['price']!,
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF00623B),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17.35,
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
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
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_travel),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
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
}
