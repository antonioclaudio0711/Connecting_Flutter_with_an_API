class ToDoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  ToDoModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  static ToDoModel fromJson(Map map) {
    return ToDoModel(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      completed: map['completed'],
    );
  }
}
