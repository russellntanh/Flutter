import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:todolist/model/task_model.dart';

import 'widget/bottom_widget.dart';
import 'widget/task_widget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TaskModel> taskList = [];

  // Insert new task to the taskList
  void _handleAddTask(String name) {
    final newTask = TaskModel(id: DateTime.now().toString(), name: name);
    setState(() {
      // Check duplicated task name
      for (int i = 0; i < taskList.length; i++) {
        if (name == taskList[i].name) return;
      }

      // Insert to taskList
      taskList.add(newTask);
    });
  }

  // Delete a selected task
  void _handleDeleteTask(String id) {
    setState(() {
      taskList.removeWhere((item) => item.id == id);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // App Header
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'ToDoList',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),

        // App Body: main content by method 1 (More efficient)
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          itemCount: taskList.length,
          itemBuilder: (context, index) => TaskWidget(
            index: index,
            task: taskList[index],
            deleteTask: _handleDeleteTask,
          ),
        ),

        // App Body: main content by method 2
        // body: SingleChildScrollView(
        //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        //   child: Column(
        //     children: taskList.map((item) => TaskWidget(task: item)).toList(),
        //   ),
        // ),

        // App Footer
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return bottom_widget(addTask: _handleAddTask);
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
