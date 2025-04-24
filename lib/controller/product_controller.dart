import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product_model.dart';

class ProductController extends GetxController {
  RxList<Product> products = <Product>[].obs;

  final String endpoint = 'https://fakestoreapi.com/products';

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    final response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      // Manually creating Product objects, no fromJson
      products.value = data.map((item) {
        return Product(
          id: item['id'],
          title: item['title'],
          image: item['image'] ?? '',
          description: item['description'] ?? '',
          price: double.parse(item['price'].toString()),

          rating: double.parse(item['rating']['rate'].toString()),
        );
      }).toList();
    }
  }

  // In product_controller.dart
  List<Product> get highRatedProducts => products.where((p) => p.rating > 3.5).toList();
  List<Product> get affordableProducts => products.where((p) => p.price < 50).toList();

}
