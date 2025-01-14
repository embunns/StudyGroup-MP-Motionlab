import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  late final String productName;
  late final String productImage;
  late final String productPrice;
  late final String productDescription;

  @override
  void onInit() {
    productName = Get.arguments['name'] ?? '';
    productImage = Get.arguments['image'] ?? '';
    productPrice = Get.arguments['price'] ?? '';
    productDescription = Get.arguments['description'] ?? '';
    super.onInit();
  }
}
