import 'package:flutter/material.dart';

class BottomTabExample extends StatefulWidget {

  @override
  _BottomTabExampleState createState() => _BottomTabExampleState();
}

class _BottomTabExampleState extends State<BottomTabExample> {

  int selectIndex=0;

  List<Widget> list=[
    Container(
      child: Center(
        child: Text("ONE"),
      ),
    ),
    Container(
      child: Center(
        child: Text("TWO"),
      ),
    ),
    Container(
      child: Center(
        child: Text("THREE"),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Tab Example"),),

      body: list.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        currentIndex: selectIndex,
        onTap: (index){
          setState(() {
            selectIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "One"),
          BottomNavigationBarItem(icon: Icon(Icons.airplanemode_on),label: "Two"),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined),label: "Three"),
        ],
      ),
    );
  }
}
