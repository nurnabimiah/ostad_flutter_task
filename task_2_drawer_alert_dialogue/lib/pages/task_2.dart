import 'package:flutter/material.dart';
import 'package:task_2_drawer_alert_dialogue/main.dart';
import 'package:task_2_drawer_alert_dialogue/utls/alert_dialogue.dart';
import 'package:task_2_drawer_alert_dialogue/utls/my_drawer.dart';

class Task2Page extends StatefulWidget {
  const Task2Page({Key? key}) : super(key: key);

  @override
  State<Task2Page> createState() => _Task2PageState();
}

class _Task2PageState extends State<Task2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(context),
      appBar: AppBar(title: Text('Task-2'),
      centerTitle: true,),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           MyAlertDialogue(context);
          },
           child:Text('Click Me'),

        ),
      ),
    );
  }
}
