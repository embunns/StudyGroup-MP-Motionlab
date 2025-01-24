import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductServices {
  static const String baseUrl = 'https://dummyjson.com';

  // Get all products, optionally filtered by category
  static Future<List<Map<String, dynamic>>> getProducts({String? category}) async {
    final url = category != null
        ? '$baseUrl/products/category/$category'
        : '$baseUrl/products';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(data['products']);
    } else {
      throw Exception('Failed to load products');
    }
  }

  // Get all categories
  static Future<List<String>> getCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/products/categories'));
    if (response.statusCode == 200) {
      return List<String>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load categories');
    }
  }

  // Get single product by ID
  static Future<Map<String, dynamic>> getProductDetail(int productId) async {
    final response = await http.get(Uri.parse('$baseUrl/products/$productId'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load product detail');
    }
  }
}
