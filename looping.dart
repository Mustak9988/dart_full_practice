import 'dart:io';

void main() {


  //add data into list
  int length = 1;
  var nameList = [];
  for (int i = 0; i < length; i++) {
    nameList.add(stdin.readLineSync());
    if (length == 7)
      break;
    else
      length++;
  }

  // print list data through single line loop
  nameList.reversed.forEach((element) {
    print(element);
  });

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3



  //For each in different way
  for (var x in nameList) print("print list value " + x);


  //while lops

  int value = 0;

  while(value < 5){
    print('value $value');
    value++;
  }


  //do while loops
  
  print("Do while loop --> ");
  int number = 1;

  do {
    print("  $number \n");
    number++;
  } while (number < 6);



}
