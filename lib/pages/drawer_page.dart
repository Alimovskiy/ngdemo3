import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DrawerPage"),
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: Text("Welcome to DrawerPage"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alimovskiy",style: TextStyle(color: Colors.white,fontSize: 20),),

                  Text("alimovskiy@gmail.com",style: TextStyle(color: Colors.white,fontSize: 18),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
