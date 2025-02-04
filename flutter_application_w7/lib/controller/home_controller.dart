import 'package:flutter_application_w3/services/product_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final products = <Map<String, dynamic>>[].obs;
  final categories = <String>[].obs;
  final isLoading = false.obs;
  final selectedCategory = "All".obs; 

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
    fetchProducts(); 
  }

  void fetchProducts({String? category}) async {
    try {
      isLoading.value = true;
      selectedCategory.value = category ?? "All";
      final response = await ProductServices.getProducts(category: category);
      products.value = response;
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void fetchCategories() async {
    try {
      final response = await ProductServices.getCategories();
      categories.value = ["All", ...response]; // Tambahkan "All" di awal
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch categories: $e');
    }
  }

  void goToProductDetail(int productId) {
    Get.toNamed('/product-detail', arguments: {'id': productId});
  }
  void toggleFavorite(int index) {
    products[index]['isFavorite'] = !products[index]['isFavorite'];
    products.refresh(); // Memperbarui tampilan UI
  }
  

}
