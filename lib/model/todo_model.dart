class TodoModel {
  final String text;
  final bool completed;

  TodoModel({this.text, this.completed});

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(text: json['text'], completed: json['completed']);
  }
}
