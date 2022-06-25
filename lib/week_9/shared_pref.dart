import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({Key? key}) : super(key: key);

  @override
  _SharedPrefState createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  var nameController = TextEditingController();
  var titleController = TextEditingController();

  var name="";
  var title="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List title"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Name"),
          ),
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(hintText: "Title"),
          ),
          ElevatedButton(
              onPressed: () async {
                // Obtain shared preferences.
                final prefs = await SharedPreferences.getInstance();

                prefs.setString("name", nameController.text);
                prefs.setString("title", titleController.text);

              },
              child: Text("SAVE")),

          ElevatedButton(
              onPressed: () async {
                // Obtain shared preferences.
                final prefs = await SharedPreferences.getInstance();

                setState(() {
                  name=prefs.getString("name")??"NO Value";
                  title=prefs.getString("title")!;
                  //name=prefs.getString("name")!;
                  //prefs.getString("title");
                });

              },
              child: Text("SHOW")),

          ElevatedButton(
              onPressed: () async {
                // Obtain shared preferences.
                final prefs = await SharedPreferences.getInstance();

                prefs.remove("name");


              },
              child: Text("REMOVE")),

          Text(name),
          Text(title),
        ],
      ),
    );
  }
}
