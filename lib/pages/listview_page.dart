import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll View Page"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          _itemList(title: "Xurshidbek",image: "assets/images/img_1.jpg"),
          _itemList(title: "Begzodbek",image: "assets/images/img_1.jpg"),
          _itemList(title: "Sherzodbek",image: "assets/images/img_1.jpg"),
          _itemList(title: "Firdavs",image: "assets/images/img_1.jpg"),
        ],
      ),
    );
  }
  Widget _itemList({title, image}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.grey,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(
            width: 10,
          ),
          Text(title, style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}


