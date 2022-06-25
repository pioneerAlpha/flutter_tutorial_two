import 'package:flutter/material.dart';

class AlertSnackBar extends StatefulWidget {
  const AlertSnackBar({Key? key}) : super(key: key);

  @override
  _AlertSnackBarState createState() => _AlertSnackBarState();
}

class _AlertSnackBarState extends State<AlertSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("This is Snackbar"),
                action: SnackBarAction(label: "NEW", onPressed: () {}),
              ));

              //Alert Dialog using Alert Dialog widget
              // showDialog(context: context,barrierDismissible: false,builder: (context){
              //   return AlertDialog(
              //     title: Text("This is tittle"),
              //     content: Text("This is body"),
              //     actions: [
              //       GestureDetector(onTap: (){
              //         Navigator.of(context).pop();
              //       },child: Text("Yes")),
              //       SizedBox(width: 20.0,),
              //       Text("No"),
              //     ],
              //   );
              // });

              //Alert dialog with Dialog widget
              /*showDialog(barrierDismissible: false,context: context, builder: (context){
                return Dialog(
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("OK"),
                        Text("OK"),
                        Text("OK"),
                        Text("OK"),
                      ],
                    ),
                  ),
                );
              });*/

              //SnackBar

              //ListTile
            },
            child: Text("CLICK")),
      ),
    );
  }
}

//
// ScaffoldMessenger.of(context)
// .showSnackBar(SnackBar(content: Text("This is Snackbar"),action: SnackBarAction(label: "NEW", onPressed: (){
// }),));
