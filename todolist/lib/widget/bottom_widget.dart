import 'package:flutter/material.dart';

class bottom_widget extends StatelessWidget {
  bottom_widget({
    super.key,
    required this.addTask,
  });

  final Function addTask;

  TextEditingController controller = TextEditingController();

  void _handleOnClick(BuildContext context) {
    final name = controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            // Place for user to input text
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Input your task title",
              ),
              // save the content which user has typed to "inputText" variable
              controller: controller,
            ),

            // Just blank box to create gab between input text and button
            SizedBox(height: 30),

            // Add Task button
            ElevatedButton(
                onPressed: () => _handleOnClick(context),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                      child: Text(
                    'Add Task',
                    style: TextStyle(fontSize: 18),
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
