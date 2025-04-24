import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../models/todo_model.dart';
import '../views/todo_screen/todo_details.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  const TodoCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: ()
        {
          Get.to(() => TodoDetailsScreen(todo: todo));
        },
        leading: CircleAvatar(child: Text("${todo.id}")),
        title: Text(todo.title),
        subtitle: Text("Completed: ${todo.completed}"),
        trailing: Icon(todo.completed ? Icons.done : Icons.error_outline),
      ),
    );
  }
}