import 'package:flutter/material.dart';

class TaskPageThree extends StatefulWidget {
  const TaskPageThree({super.key});

  @override
  State<TaskPageThree> createState() => _TaskPageThreeState();
}

class _TaskPageThreeState extends State<TaskPageThree> {
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Task Page Three"),
      ),
      body: PageView(
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController!.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },

        backgroundColor: Colors.purpleAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.deepPurple,
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(color: Colors.lightBlue),


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
        ],
      ),
    );
  }
}
