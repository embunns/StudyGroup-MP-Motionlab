import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Iconsax.menu_1, size: 24),
                    Image.asset("assets/images/logo.png", height: 47),
                    Icon(Iconsax.shopping_bag4, size: 24),
                  ],
                ),
                SizedBox(height: 40), //jarak antara header dan teks
                // Teks utama
                Text(
                  "Our way of loving\nyou back",
                  style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 40), //jarak antara teks dan search bar
                // Search bar
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEDEDED),
                    borderRadius: BorderRadius.circular(26.5),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(Iconsax.search_normal, color: Colors.grey),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: GoogleFonts.inter(
                              fontWeight: FontWeight.w200,
                              fontSize: 16
                              ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30), //jarak antara search bar dan kategori
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        decoration: BoxDecoration(
                          color: Color(0xFF00623B),
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Text(
                          "All",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                            
                            ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Text("Watch",
                        style: GoogleFonts.nunitoSans(
                            color: Color.fromARGB(255, 53, 53, 53),
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Text("Shirt",
                        style: GoogleFonts.nunitoSans(
                            color: Color.fromARGB(255, 53, 53, 53),
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Text(
                          "Shoes",
                          style: GoogleFonts.nunitoSans(
                            color: Color.fromARGB(255, 53, 53, 53),
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                ),
                
                SizedBox(height: 20), //jarak antara kategori dan teks
              
                Text(
                  "Our Best Seller",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2, // 2 kolom
                    crossAxisSpacing: 15, // Jarak antar kolom
                    mainAxisSpacing: 15, // Jarak antar baris
                    childAspectRatio: 0.64, // Rasio ukuran kotak
                    children: [
                      // Produk 1
                    Container(
                    width: 160, // Lebar grid pas untuk konten
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), //warna bayangan
                          blurRadius: 6, 
                          offset: Offset(4, 4), //posisi bayangan (x, y)
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/product1.png",
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
                              "Mi Band 8 Pro",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.88, 
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$54.00",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF00623B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.35,
                                  ),
                                ),
                                const Icon(
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

                      // Produk 2
                    Container(
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
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/product2.png",
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
                              "Lycra Men's Shirt",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.88, 
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$12.00",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF00623B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.35,
                                  ),
                                ),
                                const Icon(
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

                    //Produk 3
                    Container(
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
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/product3.png",
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
                              "Siberia 800",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.88,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$45.00",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF00623B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.35,
                                  ),
                                ),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
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

                    //Produk 4
                    Container(
                    width: 160, //lebar grid untuk konten
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), 
                          blurRadius: 6, // Radius blur
                          offset: Offset(4, 4), // Posisi bayangan (x, y)
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/product4.png",
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
                              "Strawberry Frapucino",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.88, 
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$35.00",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF00623B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.35,
                                  ),
                                ),
                                const Icon(
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

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          backgroundColor: const Color(0xFF00623B), 
          selectedItemColor: Colors.white, 
          unselectedItemColor: Colors.grey, 
          showSelectedLabels: false, 
          showUnselectedLabels: false, 
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_15),
              label: "", // Label kosong
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet_1),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.notification),
              label: "",
            ),
          ],
      ),
      ),
    );
  }
}
