import 'package:flutter/material.dart';
import 'package:flutter_tutorial/week_4/row_column_expand.dart';
import 'package:flutter_tutorial/week_5/text_form_field.dart';

import 'week_3/scaffold_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFormFieldExample(),
    );
  }
}
