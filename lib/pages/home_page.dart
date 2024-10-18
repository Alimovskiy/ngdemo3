import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _dialogIos(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return CupertinoAlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure you want to logout"),
          actions: [
            CupertinoDialogAction(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Cencel"),
            ),
            CupertinoDialogAction(
              textStyle: TextStyle(color: Colors.red),
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Confirn"),
            )
          ],
        );
      });
    }
  _dialogAndroid(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure you want to logout"),
          actions: [
            MaterialButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Cencel"),
            ),

            MaterialButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Confirn"),
            )
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: (){
            if(Platform.isAndroid){
              _dialogAndroid();
            } else if (Platform.isIOS){
            _dialogIos();
          }
            },
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}
