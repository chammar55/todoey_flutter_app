import 'package:flutter/material.dart';
import 'package:todoey_flutter_app/Widgets/tasks_tile.dart';
import 'package:todoey_flutter_app/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> task;
  TasksList(this.task);
  @override
  State<TasksList> createState() => _tasksListState();
}

class _tasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          checkBoxCallBack: (checkboxState) {
            setState(() {
              widget.task[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
