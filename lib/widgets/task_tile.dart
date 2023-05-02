import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.toggleCheckboxState,
    required this.title,
    required this.deleteTask,
  });

  final bool isChecked;
  final String title;
  final Function(bool? checkState) toggleCheckboxState;
  final Function() deleteTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
      onLongPress: deleteTask,
    );
  }
}
