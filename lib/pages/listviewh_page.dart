import 'package:flutter/material.dart';

class ListviewhPage extends StatefulWidget {
  const ListviewhPage({super.key});

  @override
  State<ListviewhPage> createState() => _ListviewhPageState();
}

class _ListviewhPageState extends State<ListviewhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List View Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 100,
        color: Colors.grey,

        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemList(title: "Xurshidbek",image: "assets/images/img_1.jpg"),
            _itemList(title: "Begzodbek",image: "assets/images/img_1.jpg"),
            _itemList(title: "Sherzodbek",image: "assets/images/img_1.jpg"),
            _itemList(title: "Firdavs",image: "assets/images/img_1.jpg"),
            _itemList(title: "Xurshidbek",image: "assets/images/img_1.jpg"),
            _itemList(title: "Begzodbek",image: "assets/images/img_1.jpg"),
            _itemList(title: "Sherzodbek",image: "assets/images/img_1.jpg"),
            _itemList(title: "Firdavs",image: "assets/images/img_1.jpg"),

          ],
        ),
      ),
    );
  }
  Widget _itemList({title, image}){
    return Container(
      width: 70,
      height: 70,
      color: Colors.purple,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),

      child: Column(
        children: [
          Image(

            width: 50,
            height: 50,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title, style: TextStyle(fontSize: 10))
        ],
      ),
    );
  }
}

