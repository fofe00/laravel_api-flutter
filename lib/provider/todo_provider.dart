import 'package:flutter/foundation.dart';

class TodoProvider with ChangeNotifier {
  String _text;
  bool _completed;
  List<TodoProvider> todoList;
  TodoProvider(String text, bool completed) {
    _text = text;
    _completed = completed;
  }
  get text => _text;
  get completed => _completed;

  setText(String text) {
    _text = text;
    notifyListeners();
  }

  setCompleted(bool completed) {
    _completed = completed;
    notifyListeners();
  }

  factory TodoProvider.fromJson(Map<String, dynamic> json) {
    return TodoProvider(json['text'], json['completed']);
  }
}
