import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';

// Product Rating > 3.5
class HighRatedProductsScreen extends StatelessWidget {


  HighRatedProductsScreen({super.key});
  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final products = controller.highRatedProducts;

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(product.image), // 👈 Ensure your `Product` model has `image` field
              backgroundColor: Colors.transparent,
            ),
            title: Text(product.title),
            subtitle: Text("Rating: ${product.rating}"),
          ),
        );
      },
    );
  }
}
