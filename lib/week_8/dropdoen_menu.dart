import 'package:flutter/material.dart';

class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({Key? key}) : super(key: key);

  @override
  _DropDownButtonExampleState createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample> {

  // Initial Selected Value
  String dropdownvalue = 'One';

  // List of items in our dropdown menu
  var items = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Toast"),
      ),
      body: Center(
        child:  DropdownButton(


          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(val),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
