import 'package:flutter/material.dart';

//TextFormField
//Form


class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({Key? key}) : super(key: key);

  @override
  _TextFormFieldExampleState createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Demo"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("This is header"),decoration: BoxDecoration(
              color: Colors.blue
            ),),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add Product"),
              onTap: (){

              },
            ),

            ListTile(
              leading: Icon(Icons.check),
              title: Text("New Product"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Summary"),
              onTap: (){

              },
            )
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "write your name",
                labelText: "Name"
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "write your address",
                labelText: "Address"
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (String? val){
                if(val!.isEmpty){
                  return "Value is empty";
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: "write your phone number",
                  labelText: "Phone Number"
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "write your email",
                  labelText: "Email Id"
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                print("VALIDATION IS SUCCESSFULL");
              }
            }, child: Text("VALIDATE"))
          ],
        ),
      ),
    );
  }
}
