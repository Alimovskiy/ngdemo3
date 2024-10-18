import 'package:flutter/material.dart';

class ScrollviewPage extends StatefulWidget {
  const ScrollviewPage({super.key});

  @override
  State<ScrollviewPage> createState() => _ScrollviewPageState();
}

class _ScrollviewPageState extends State<ScrollviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll view Page"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.red,
            ),
            Container(
              height: 300,
              color: Colors.green,
            ),
            Container(
              height: 300,
              color: Colors.orange,
            ),
            Container(
              height: 300,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
