class Task {
  String name;
  bool isCompleted;
  String priority; // 'High', 'Medium', 'Low'

  Task({required this.name, this.isCompleted = false, this.priority = 'Low'});
}