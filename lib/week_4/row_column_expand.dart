import 'package:flutter/material.dart';

//Button
//GestureDetector
//Image Widget

class RowColumnExample extends StatefulWidget {
  const RowColumnExample({Key? key}) : super(key: key);

  @override
  _RowColumnExampleState createState() => _RowColumnExampleState();
}

class _RowColumnExampleState extends State<RowColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row & Column"),
        ),
        body: Container(
            //height: 200,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      print("THIS IS CLICKED");
                    },
                    child: Text("CLICK")),
                ElevatedButton.icon(
                    onPressed: () {
                      print("THIS IS CLICKED TWO");
                    },
                    icon: Icon(Icons.add),
                    label: Text("CLICK")),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  splashColor: Colors.grey,
                  height: 50,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      Text("CLICK")
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    print("THIS IS CLICKED");
                  },
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    child: Center(child: Text("CLICK HERE")),
                  ),
                )
              ],
            )));
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text("ONE",style: TextStyle(fontSize: 20),),
// Text("TWO",style: TextStyle(fontSize: 20),),
// Text("THREE",style: TextStyle(fontSize: 20),),
// Text("FOUR",style: TextStyle(fontSize: 20),),
// ],
// ),

/*child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ONE",style: TextStyle(fontSize: 20),),
            Text("TWO",style: TextStyle(fontSize: 20),),
            Text("THREE",style: TextStyle(fontSize: 20),),
            Text("FOUR",style: TextStyle(fontSize: 20),),
          ],
        ),*/
