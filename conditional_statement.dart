import 'dart:io';


enum Pet { dog, cat, bird, lizard }

void main() {

   //single line conditional statement
  print(singleLineFunction("Hello"));

   //print enum type variable
  print("Enum type variable: "+typesOfPet(Pet.bird));


  //check valid string or not
  print(stringMatch("Mo"));


  /*

  //calcualtor
  print("Enter operator '+' '-' '*' '/' '%' ");
  String operator = stdin.readLineSync()!;
  print(" Enter first digit");
  var num1 = double.parse(stdin.readLineSync()!);
  print("Enter 2nd digit");
  var num2 = double.parse(stdin.readLineSync()!);
  print("Result is : ${calculator(operator, num1, num2)}");

   */


  //Even of Odd
  print("It is ${evenOrOdd(10)}");

  //profit Function
  // profitCalculation();
}


//single line statement

 dynamic singleLineFunction(String? value)=> value ?? "An error occure";


String typesOfPet(Pet pet) {
  switch (pet) {
    case Pet.bird:
      return 'Bird';
      break;

    case Pet.cat:
      return 'Cat';
      break;

    case Pet.dog:
      return 'Dog';
      break;
    default:
      return 'nothing';
      break;
  }
}



//Match input string with other String

bool stringMatch(String char){

  if("Mostak".contains(char))
    return true;
  else
    return false;
}



//mini calculator and arethemic operator

double? calculator(String operator, double number1, double number2) {
  switch (operator) {
    case '+':
      return number1 + number2;
      break;
    case '-':
      return number1 - number2;
      break;

    case '*':
      return number1 * number2;
      break;

    case '/':
      return number1 / number2;
      break;

    case '%':
      return number1 % number2;
      break;

    default:
      print('Nothing to print');
  }
}

//Although it is dynamic, String is addded as a return type; However, it will work if remove String as a return type.
//Ternary operator
String evenOrOdd(int number) => number % 2 == 0 ? "Even" : "Odd";

dynamic profitCalculation() {
  dynamic profit;

  print("Enter Selling Price");
  double sellingPrice = double.parse(stdin.readLineSync()!);
  print("Enter Purchase Price");
  double purchasePrice = double.parse(stdin.readLineSync()!);

  if (sellingPrice > purchasePrice) {
    profit = sellingPrice - purchasePrice;
    print("Profit :$profit TK");
  } else if (purchasePrice > sellingPrice) {
    profit = purchasePrice - sellingPrice;
    print("Loss :$profit TK");
  } else {
    print("Wront Input");
    profit = 0;
  }

  print("Runtype type of profit: ${profit.runtimeType} ");
  return profit;
}
