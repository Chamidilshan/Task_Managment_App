import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_managment_app/screens/add_task.dart';
import 'package:task_managment_app/screens/all_tasks.dart';
import 'package:task_managment_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
