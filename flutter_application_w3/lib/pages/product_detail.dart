import 'package:flutter/material.dart';

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 33,
                    ),
                    Text(
                      "Product Detail",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 33,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Image.asset(
                  productImage,
                  width: double.infinity,
                  height: 401,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      productPrice,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF00623B),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      productDescription,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        // Handle adding to bag
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Text(
                            "Add to bag",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        color: Color(0xff00623B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
