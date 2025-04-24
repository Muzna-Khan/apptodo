import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/todo_model.dart';

class TodoController extends GetxController {
  RxList<Todo> todos = <Todo>[].obs;
  final endpoint = "https://jsonplaceholder.typicode.com/todos";

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    try {
      final response = await http.get(Uri.parse(endpoint));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);

        final List<Todo> fetchedTodos = data.map((item) {
          return Todo(
            id: item['id'],
            userId: item['userId'],
            title: item['title'],
            completed: item['completed'],
          );
        }).toList();

        todos.value = fetchedTodos;
      } else {
        print("Failed to fetch todos: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching todos: $e");
    }
  }

  List<Todo> get completedTodos => todos.where((todo) => todo.completed).toList();

  List<Todo> get user7Todos => todos.where((todo) => todo.userId == 7).toList();
}
