import 'package:apptodo/views/product_section/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';

// All Products List Screen
class AllProductsScreen extends StatelessWidget {
  AllProductsScreen({super.key});

  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.products.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: controller.products.length,
        itemBuilder: (context, index) {
          final product = controller.products[index];

          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
                 onTap: (){
                   Get.to(() => ProductDetailsScreen(product: product));

                 },
                contentPadding: const EdgeInsets.all(12),
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(product.image), // 👈 Ensure your `Product` model has `image` field
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  "Price: \$${product.price} | ⭐ ${product.rating}",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
