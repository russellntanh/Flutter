import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:todolist/model/task_model.dart';

class TaskWidget extends StatelessWidget {
  TaskWidget({
    super.key,
    required this.task,
    required this.deleteTask,
  });

  TaskModel task;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 221, 221),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Display task title
            Text(
              task.name,
              style: TextStyle(
                color: const Color(0xff4B4B4B),
                fontSize: 20,
              ),
            ),

            // Delete a task
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  deleteTask(task.id);
                  print('Task is deleted');
                }
                return;
              },

              // Display delete icon
              child: Icon(
                Icons.delete,
                color: Color(0xff4B4B4B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
