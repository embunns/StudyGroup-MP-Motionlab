import 'package:get/get.dart';

class HomeController extends GetxController {
  final products = [
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
  ].obs;
  void goToProductDetail(Map<String, String> product) {
    Get.toNamed('/product-detail', arguments: product);
  }

}
