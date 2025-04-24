import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/todo_controller.dart';
import '../../custom_widget/todo_card.dart';
import '../../models/todo_model.dart';

// All Todos List Screen
class TodoListScreen extends StatelessWidget {
   TodoListScreen({super.key});
   final TodoController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.todos.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }
      return ListView.builder(

        itemCount: controller.todos.length,
        itemBuilder: (context, index) {
          Todo todo = controller.todos[index];
          return TodoCard(todo: todo);
        },
      );
    });
  }
}



