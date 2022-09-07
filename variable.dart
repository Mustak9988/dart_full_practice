// final String variableName = "hello world";
// const double pi = 3.1416;
// or
final variableName = "hello world";
const pi = 3.1416;

void main() {


  print("************* Dart Variables ***************");

//Integer which is 8 bytes
  String digit = "12";
// String? digit = stdin.readLineSync();
 int.parse(digit);



 //three types of print in dart
 /*
  print("String to Int converted digit is "+digit+" And print like java");
  print("Converted value is ${digit}");
  print("Converted value is $digit");
  */


  // ***************dart support dynamic variable also 8 bytes***********

  dynamic name = "Mostak Khan Khadem";
  print("Name is $name");
  print("Variable type ${name.runtimeType}");


  //************double variable in dart****************
  const age  = 87.298589878;
  print("age is ${age.toStringAsFixed(2)}");
  //double to int
  print("Double to int  ${age.toInt()}");

  //****************** int variable 8 bytes ************

 const peopleAge = 100;
 print("Person age is ${peopleAge}");

 //int to string
 print("Int to String conversion "+peopleAge.toString());
 print(peopleAge.runtimeType);

 //int to double
 int peopleAges = 130;
 dynamic doubleValue = peopleAges.toDouble();
 print("Int to double conversion ${doubleValue}");
 print(doubleValue.runtimeType);



  //*******************string variable 8 bytes*********************
  String? b ;
 //This means a equals b, but if b is null then a equals 'hello'.
  b = b ?? 'hello';
  print("String default value ${b}");

  //print multiline string
 String multilineString = ''' This is nothing but example of multiline string : hello people of BD and lets start dart
 for flutter and hope this will help you out 
                                      ''';
 print(multilineString);

 //string concatenation
 String firstString = "Age of Mostak is ";
 String totalString = firstString+peopleAges.toString();
 print("Sting concatenation "+totalString);

 //raw string

 String rawString = r'Hello people and this is a raw string';
 print(rawString);

 //constant String
 // Constant is a compile time memory accessor. we can not change variables value once it is declared
 const consSting  = 'Hello people this is constant variable';
 // consSting = 'Hello';
 print(consSting.runtimeType);


 // ******************* boolean *********************

 bool isDhaka = false;
 const isMan = true;

 print(" This is boolean : ${isDhaka}");
 print(" Const type boolean  : ${isDhaka} ${isMan.runtimeType}");



// ******************* Var *********************

//var use to declare a variable and decide it type by its assigned variable and kind of static variable
//var does not support const and final keyword as itself static

var variable = 2.0;
print(" Var type variable : ${variable} ${variable.runtimeType}");


 //******************* Num *********************

 //num variable is only use to assign double and int value

 num intValue = 3;
 doubleValue = 36.36;

 print('Num value type ${intValue.runtimeType}');
 print('DoubleValue value type ${intValue.runtimeType}');


 // ******************** late ***************

 late String value ;

 value = 'Dhaka';
 //if i print value then there will be crash
 print(value);


 //********* Final & Constant *************

 /*
 Final is not compile time memory allocation. That means If I declare a value and this value will not use anymore then compiler will not allocate memory
 for this value.

 However Const is a compile time constant and during the compile time this value will be assign whether it is used or not.

 final, const, and num are don't need to declare with variable type.
  */


 print(variableName);
 //we can not assign another value in variable
 //variableName = "Dhaka Kings";
 print(pi);


 //********************** Null safety **********************

 // ? (name?) means a value can be null.
 // ! (name!) means value can not be null.



}
