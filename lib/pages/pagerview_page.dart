import 'package:flutter/material.dart';

class PagerviewPage extends StatefulWidget {
  const PagerviewPage({super.key});

  @override
  State<PagerviewPage> createState() => _PagerviewPageState();
}

class _PagerviewPageState extends State<PagerviewPage> {

  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pager View Page"),
        backgroundColor: Colors.blue,

      ),
      body: PageView(
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,

        children: [
          Container(
            color: Colors.pink,
            child: Center(
              child: Text("Page one", style: TextStyle(fontSize: 30),),
            ),
          ),
          Container(
            color: Colors.lightBlue,
            child: Center(
              child: Text("Page two", style: TextStyle(fontSize: 30),),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Page three", style: TextStyle(fontSize: 30),),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
            _pageController!.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Serach"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
