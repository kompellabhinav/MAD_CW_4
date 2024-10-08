import 'package:flutter/material.dart';
import 'package:cw_4/models/tasks.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function(Task) onChanged;
  final Function(Task) onDelete;

  const TaskItem({
    Key? key,
    required this.task,
    required this.onChanged,
    required this.onDelete,
  }) : super(key: key);

  Color getPriorityColor(String priority) {
    switch (priority) {
      case 'High':
        return Colors.redAccent;
      case 'Medium':
        return Colors.orangeAccent;
      case 'Low':
        return Colors.greenAccent;
      default:
        return Colors.cyanAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color priorityColor = getPriorityColor(task.priority);

    return ListTile(
      leading: Checkbox(
        value: task.isCompleted,
        onChanged: (bool? value) {
          onChanged(task);
        },
        activeColor: Colors.cyanAccent,
        checkColor: Colors.black,
      ),
      title: Text(
        task.name,
        style: TextStyle(
          color: Colors.cyanAccent,
          decoration: task.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      subtitle: Text(
        'Priority: ${task.priority}',
        style: TextStyle(color: priorityColor),
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.cyanAccent,
        onPressed: () => onDelete(task),
      ),
    );
  }
}
