import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  _ListTileExampleState createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List title"),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            
            leading: Text("Leading"),
            subtitle: Text("Sub title"),
            trailing: Text("Trailing"),
          )
      ),
    );
  }
}
