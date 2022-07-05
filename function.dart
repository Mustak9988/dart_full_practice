void main() {
  //positional parameter
  print("Name is :" + printName("ABC", 23));

  //single line function and => means return
  print(isEvenNumber(121));

  //named parameter
  //does not matter about position
  print(nameParameter(num2: 20,num1: 10));

  //name and positional parameter combined
  nameAndPositional(2, member2: "karim", member1: "Rahim");


  //positional and name parameters
  //name parameter is optional and only optional parameter allow required key word

  //calling name parameter without one field as optional
  purchaseTicket("05-07-2022", phone: 01755058892);

  purchaseTicket("05-07-2022",name: "Hamid", phone: 01755058892);


  //optional parameter
  admissionAnalysis(162144);
  admissionAnalysis(162100, "Empty");


  //default value parameter
  defaultValue(null, '3450');



  //type define function
  //type def
  // type def
  operation o = additions;
  o(10,54);
  o = multiplications;
  o(10,54);
  o = subtractions;
  o(10,54);
}

//general function with positional parameter
printName(String? name, int age) {
  print("age is : $age");
  return name;
}

//Single line function
isEvenNumber(int num) => num % 2 == 0 ? "Yes" : "no";

//name parameter
nameParameter({var num1, var num2}) => num1 + num2;

//name and positional parameter
nameAndPositional(int num, {var member1, var member2}){
  print("Total family member ${num} and name is ${member1} & $member2");
}

//with required field
//required field is not possible without named parameter
//name parameter might be optional
void purchaseTicket( String? date,  {required int phone, var name }){
  print("Journey Date: $date");
  print("Phone Number: $phone");
  print("Name: $name");

}


//[] this is other type of optional parameter without name parameter

admissionAnalysis(int? id, [var name, var religion]){
  print("Id Number: $id");
  print("Religion: $religion");
  print("Name: $name");
}

defaultValue(String? villageName, String villageCode, [int areaCode = 200]){

  villageName = villageName ?? villageCode;
  print("Village name or code: $villageName ");
  print("post code: $areaCode");

}



//typedef function

//Syntax: typedef function_name (parameters);
//After assigning the variable, if we have to invoke it then we go as: Syntax: variable_name(parameters);
typedef operation(int a, int b); //operation types variable. typedef means type

additions(int a, int b){
  print(a + b) ;
}

subtractions(int a, int b){
  print(a-b);
}

multiplications(int a, int b){
  print(a*b);
}

