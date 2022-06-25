import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LIstViewBuilderExample extends StatefulWidget {
  const LIstViewBuilderExample({Key? key}) : super(key: key);

  @override
  _LIstViewBuilderExampleState createState() => _LIstViewBuilderExampleState();
}

class _LIstViewBuilderExampleState extends State<LIstViewBuilderExample> {


  var numberList=['One','Two','Three','Four','Five','Six','Seven','Eight',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder Example"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: numberList.length,
          itemBuilder: (context,index){
           return Text("Value is: ${numberList[index]}",style: TextStyle(fontSize: 20),);
          },

        )
      ),
    );
  }
}
