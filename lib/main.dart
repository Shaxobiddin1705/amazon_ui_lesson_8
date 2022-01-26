import 'package:amazon_ui_lesson_8/pages/current_amazon_ui.dart';
import 'package:amazon_ui_lesson_8/pages/home_page.dart';
import 'package:amazon_ui_lesson_8/pages/online_task_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnlineTaskPage(),
    );
  }
}