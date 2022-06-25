
import 'package:flutter/material.dart';


//Widget
//Scaffold Widget
//Stateless and Stateful Widget


class ScaffoldWidgetExample extends StatefulWidget {
  const ScaffoldWidgetExample({Key? key}) : super(key: key);

  @override
  _ScaffoldWidgetExampleState createState() => _ScaffoldWidgetExampleState();
}

class _ScaffoldWidgetExampleState extends State<ScaffoldWidgetExample> {

  String? myText="Hello There";

  int? count=0;

  @override
  Widget build(BuildContext context) {

    print("CALLING");

    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        leading: Icon(Icons.email),
        actions: [
          Icon(Icons.email),
          SizedBox(width:10,),
          Icon(Icons.ac_unit_rounded)
        ],
      ),
      body: Center(
        child: Text("$count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count=count!+1;
          });
        },
        child: Icon(Icons.add),
      ),
    );

  }
}
