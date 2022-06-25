// Null Safety in simple words means a variable cannot contain a
// ‘null’ value unless you initialized with null to that variable.

void main(){


  var nameObj=Test();

  print(nameObj.name??"Rifat");

}

//Define a class
class Test{


  String? name;


}