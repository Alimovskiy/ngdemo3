import 'package:flutter/material.dart';
import 'package:ngdemo3/pages/home_page.dart';
import 'package:ngdemo3/pages/scrollview_page.dart';
import 'package:ngdemo3/pages/listviewh_page.dart';
import 'package:ngdemo3/pages/drawer_page.dart';
import 'package:ngdemo3/pages/gridview_page.dart';
import 'package:ngdemo3/pages/pagerview_page.dart';
import 'pages/task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TaskPage(),
    );
  }
}


