import 'package:apptodo/views/product_section/product_list.dart';
import 'package:apptodo/views/product_section/product_price.dart';
import 'package:apptodo/views/product_section/product_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';

// Product Home Screen
class ProductHome extends StatefulWidget {
  const ProductHome({super.key});

  @override
  State<ProductHome> createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
  final ProductController controller = Get.put(ProductController());
  int currentIndex = 0;

  final screens = [
    AllProductsScreen(),           // All products
    AffordableProductsScreen(),    // Price < 50
    HighRatedProductsScreen(),    // Rating > 3.5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products GetX App"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.orange,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "All"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Price < 50"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Rating > 3.5"),
        ],
      ),
    );
  }
}





