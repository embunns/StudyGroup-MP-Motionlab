import 'package:get/get.dart';

class CartController extends GetxController {
  final quantity = 0.obs;

  void quantityIncrement() {
    quantity.value++;
    update();
  }

  void quantityDecrement() {
    if (quantity.value > 0) {
      quantity.value--;
    }
  }
}
