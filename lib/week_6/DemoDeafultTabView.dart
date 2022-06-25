import 'package:flutter/material.dart';

class DemoDefaultTabView extends StatefulWidget {

  @override
  _DemoDefaultTabViewState createState() => _DemoDefaultTabViewState();
}

class _DemoDefaultTabViewState extends State<DemoDefaultTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("DefaultTab Example"),
          bottom: TabBar(tabs: [
            Tab(text: "One",icon: Icon(Icons.access_time),),
            Tab(text: "Two",icon: Icon(Icons.add_box_rounded)),
            Tab(text: "Three",icon: Icon(Icons.cancel_outlined)),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(child: Text("ONE"),),
          ),
          Container(
            child: Center(child: Text("TWO"),),
          ),
          Container(
            child: Center(child: Text("THREE"),),
          )
        ]),
      ),
    );
  }
}
