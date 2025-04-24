import 'package:apptodo/views/todo_screen/todo_screen.dart';
import 'package:apptodo/views/todo_screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/todo_controller.dart';
import 'completed_screen.dart';

//Todo List Home Screen
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final TodoController controller = Get.put(TodoController());
  int currentIndex = 0;

  final screens = [
    TodoListScreen(),           // All Todos
    CompletedTodosScreen(),     // Todos completed
    User7TodosScreen(),         // User 7 todos
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("GetX Todo App"),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "All"),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User 7"),
        ],
      ),
    );
  }
}
