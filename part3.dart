import 'part2.dart';
import 'part1.dart';

List<Todo> addTodo(
  List<Todo> todos,
  String text,
  Category category,
  Priority priority,
) {
  final newTodo = Todo(
    id: DateTime.now().millisecondsSinceEpoch.toString(),
    text: text,
    isDone: false,
    category: category,
    priority: priority,
  );

  return [...todos, newTodo];
}

List<Todo> deleteTodo(List<Todo> todos, String id) {
  return todos.where((t) => t.id != id).toList();
}

List<Todo> toggleTodo(List<Todo> todos, String id) {
  return todos.map((t) {
    return t.id == id
        ? t.copyWith(isDone: !t.isDone)
        : t;
  }).toList();
}
