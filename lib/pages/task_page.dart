import 'package:ngdemo3/pages/drawer_page.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  String? userNickName= "𓅇𝓐𝓵𝓲𝓶𝓸𝓿𝓼𝓴𝓲𝔂";
  String? userName= "@"+"AlimovskiyX";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Page One"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.lightBlue,
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      width: 70,
                      height: 70,
                      child: Image(
                        image: AssetImage("/assets/images/dwer_ava.jpg"),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userNickName!, style: TextStyle(color: Colors.white, fontSize: 15)),
                            Text(userName!, style: TextStyle(color: Colors.greenAccent  , fontSize: 10)),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 60,
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Home", style: TextStyle(color: Colors.grey, fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 60,
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Profile", style: TextStyle(color: Colors.grey, fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 60,
                    child: Row(
                      children: [
                        Icon(Icons.group),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("About us", style: TextStyle(color: Colors.grey, fontSize: 20)),
                        )
                      ],
                    ),
                  )
                ],

              ),
            )
          ],
        ),

      )
    );
  }
}
