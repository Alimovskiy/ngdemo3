import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Page"),
        backgroundColor: Colors.blue,
        
        
      ),
      body: GridView.count(
          crossAxisCount: 2,
        children: [
          _itemList(title: "Xurshidbek",image: "assets/images/img_1.jpg"),
          _itemList(title: "Begzodbek",image: "assets/images/img_1.jpg"),
          _itemList(title: "Sherzodbek",image: "assets/images/img_1.jpg"),
          _itemList(title: "Firdavs",image: "assets/images/img_1.jpg"),
        ],
      ),
    );
  }
  Widget _itemList ({title, image}){
    return Container(
      color: Colors.red,
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 70,
            width: 70,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title, style: TextStyle(fontSize: 16),)
        ],
      ),
    );
    
  }
}
