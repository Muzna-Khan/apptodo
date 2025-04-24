import 'package:apptodo/views/product_section/product_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'todo_screen/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Section"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade800,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.task_alt_rounded, size: 100, color: Colors.teal),
              const SizedBox(height: 30),

              Text(
                "What would you like to explore?",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              /// Todo Section Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Get.to(() => const HomePage()),
                  icon: const Icon(Icons.check_circle, size: 26),
                  label: const Text(
                    "Todo Section",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ///Product Section
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Get.to(() => const ProductHome()),
                  icon: const Icon(Icons.shopping_cart_checkout, size: 26),
                  label: const Text(
                    "Product Section",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
