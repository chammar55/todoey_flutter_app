import 'package:flutter/material.dart';

// class TaskTile extends StatelessWidget {
//   const TaskTile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('This is a task'),
//       trailing: Checkbox(
//         value: false,
//         onChanged: null,
//       ),
//     );
//   }
// }

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}
