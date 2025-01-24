import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  final RxString productName = ''.obs;
  final RxString productImage = ''.obs;
  final RxString productPrice = ''.obs;
  final RxString productDescription = ''.obs;

  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProductDetails();
  }

  void fetchProductDetails() async {
    isLoading.value = true;

    try {
      final productId = Get.arguments?['id'];
      if (productId == null) {
        Get.snackbar('Error', 'Product ID is missing!');
        isLoading.value = false;
        return;
      }

      print('Fetching product details for ID: $productId');
      final response = await Dio().get(
        'https://dummyjson.com/products/$productId',
        options: Options(
          validateStatus: (status) {
            return status != null && status < 500; 
          },
        ),
      );

      if (response.statusCode == 404) {
        print('Product not found for ID: $productId');
        Get.snackbar('Error', 'Product not found!');
        return;
      }

      final data = response.data;
      productName.value = data['title'] ?? 'Unknown Product';
      productImage.value = data['thumbnail'] ?? '';
      productPrice.value = data['price'].toString();
      productDescription.value = data['description'] ?? 'No description available.';
    } catch (e) {
      print('Error while fetching product details: $e');
      Get.snackbar('Error', 'Failed to load product details: $e');
    } finally {
      isLoading.value = false;
    }
  }

  bool addToBag() {
    if (productName.value.isEmpty) {
      Get.snackbar('Error', 'Product name is missing');
      return false;
    }
    print('Product added to bag: ${productName.value}');
    Get.snackbar('Success', '${productName.value} added to bag');
    return true;
  }
}
