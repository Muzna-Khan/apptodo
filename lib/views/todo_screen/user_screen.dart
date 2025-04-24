import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../controller/todo_controller.dart';
import '../../custom_widget/todo_card.dart';
// User 7 todos detail
class User7TodosScreen extends StatelessWidget {

  User7TodosScreen({super.key});
  final TodoController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final user7 = controller.user7Todos;
    return ListView.builder(
      itemCount: user7.length,
      itemBuilder: (context, index) => TodoCard(todo: user7[index]),
    );
  }
}
