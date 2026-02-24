import 'part1.dart';
import 'part2.dart';
import 'part3.dart';

void main() {
  var todos = [
    const Todo(
      id: "1",
      text: "Morning run",
      isDone: false,
      category: Category.health,
      priority: Priority.mid,
    ),
    const Todo(
      id: "2",
      text: "Design review",
      isDone: false,
      category: Category.work,
      priority: Priority.high,
    ),
    const Todo(
      id: "3",
      text: "Read 30 pages",
      isDone: true,
      category: Category.personal,
      priority: Priority.low,
    ),
  ];

  todos = addTodo(
    todos,
    "Buy coffee",
    Category.personal,
    Priority.low,
  );

  print("After add: ${todos.length}");

  todos = toggleTodo(todos, todos.first.id);
  print("First todo done: ${todos.first.isDone}");

  todos = deleteTodo(todos, todos.last.id);
  print("After delete: ${todos.length}");
}
