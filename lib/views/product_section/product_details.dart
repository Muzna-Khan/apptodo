import 'package:flutter/material.dart';
import '../../models/product_model.dart';

// Product Details Screen
class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text(product.title),
          centerTitle: true,
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.network(product.image, height: 200)),
            const SizedBox(height: 20),
            Text(product.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Price: \$${product.price}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Rating: ⭐ ${product.rating}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
