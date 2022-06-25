import 'package:flutter/material.dart';

class BottomTabBarView extends StatefulWidget {
  const BottomTabBarView({Key? key}) : super(key: key);

  @override
  _BottomTabBarViewState createState() => _BottomTabBarViewState();
}

class _BottomTabBarViewState extends State<BottomTabBarView> {

  List<Widget> list=[
    Container(
      child: Center(child: Text("ONE"),),
    ),
    Container(
      child: Center(child: Text("TWO"),),
    ),
    Container(
      child: Center(child: Text("THREE"),),
    )
  ];

  int selectIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Tab View"),
      ),
      body: list.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: selectIndex,
        onTap: (value){
          setState(() {
            selectIndex=value;
          });
        },
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: "One"),
          BottomNavigationBarItem(icon: Icon(Icons.access_time),label: "Two"),
          BottomNavigationBarItem(icon: Icon(Icons.new_releases),label: "Three"),
        ],
      ),
    );
  }
}
