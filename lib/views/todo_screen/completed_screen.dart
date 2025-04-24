import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../controller/todo_controller.dart';
import '../../custom_widget/todo_card.dart';

//Todo List completed Screen
class CompletedTodosScreen extends StatelessWidget {

   CompletedTodosScreen({super.key});
  final TodoController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final completed = controller.completedTodos;
    return ListView.builder(
      itemCount: completed.length,
      itemBuilder: (context, index) => TodoCard(todo: completed[index]),
    );
  }
}
