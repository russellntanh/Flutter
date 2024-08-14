import 'package:flutter/material.dart';

import 'widget/ticketWidget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

        // App Body: main content
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            taskWidget(taskName: "Task 1"),
            taskWidget(taskName: "Task 2"),
          ],
        ),

        // App Footer
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showModalBottom(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _showModalBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) => Padding(
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
                    ),

                    // Just blank box to create gab between input text and button
                    SizedBox(height: 30),

                    // Button to add the new task
                    ElevatedButton(
                        onPressed: () {},
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
            ));
  }
}
