import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastExample extends StatefulWidget {
  const FlutterToastExample({Key? key}) : super(key: key);

  @override
  _FlutterToastExampleState createState() => _FlutterToastExampleState();
}

class _FlutterToastExampleState extends State<FlutterToastExample> {

  late Size size;

  @override
  void initState() {
    // TODO: implement initState
   size=getMediaQuery(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Toast"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Center(
          child: ElevatedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "This is Bottom Toast",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
               // timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                fontSize: 30.0
            );
          }, child: Text("Show Toast")),
        ),
      ),
    );
  }
}


Size getMediaQuery(BuildContext context){
  return MediaQuery.of(context).size;
}