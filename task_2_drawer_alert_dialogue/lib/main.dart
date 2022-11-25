import 'package:flutter/material.dart';
import 'package:task_2_drawer_alert_dialogue/pages/task_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task-2',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: const Task2Page(),
    );
  }
}

