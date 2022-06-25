import 'package:flutter/material.dart';

class CustomTabBarView extends StatefulWidget {
  @override
  _CustomTabBarViewState createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Tab View"),
        bottom: TabBar(controller: controller, tabs: [
          Tab(
            text: "One",
            icon: Icon(Icons.access_time),
          ),
          Tab(text: "Two", icon: Icon(Icons.add_box_rounded)),
          Tab(text: "Three", icon: Icon(Icons.cancel_outlined)),
        ]),
      ),
      body: TabBarView(controller: controller, children: [
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
      ]),
    );
  }
}
