import 'package:flutter/material.dart';

class ReusableWidgetDemo extends StatefulWidget {
  const ReusableWidgetDemo({Key? key}) : super(key: key);

  @override
  _ReusableWidgetDemoState createState() => _ReusableWidgetDemoState();
}

class _ReusableWidgetDemoState extends State<ReusableWidgetDemo> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reusable Widget Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFieldWidget(controller: nameController,hintText: "name",labelText: "User Name",),
            SizedBox(height: 20,),
            TextFieldWidget(controller: emailController,hintText: "email",labelText: "User Email",),
            SizedBox(height: 20,),
            TextFieldWidget(controller: addressController,hintText: "address",labelText: "User Address",),
            SizedBox(height: 20,),
            TextFieldWidget(controller: phoneController,hintText: "phone number",labelText: "User Phone NUmber",),

          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {


  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;


  TextFieldWidget({this.controller,this.hintText,this.labelText});

  @override
  Widget build(BuildContext context) {

    OutlineInputBorder outlineInputBorder= OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue)
    );

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder
      ),
    );
  }
}
