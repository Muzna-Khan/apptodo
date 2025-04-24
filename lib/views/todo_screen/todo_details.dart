import 'package:flutter/material.dart';
import '../../models/todo_model.dart';

// Todo Detail
class TodoDetailsScreen extends StatelessWidget {
  final Todo todo;

  const TodoDetailsScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(todo.title),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  todo.completed ? Icons.check_circle : Icons.cancel,
                  color: todo.completed ? Colors.green : Colors.redAccent,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  todo.completed ? "Completed" : "Not Completed",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: todo.completed ? Colors.green : Colors.redAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.person, color: Colors.green, size: 30),
                const SizedBox(width: 10),
                Text(
                  "User ID: ${todo.userId}",
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
