
void main() {
// ****************** Arithmetic Operator***************

  var num1 = 10, num2 = 20;
  print(num2 + num1);
  print(num2 - num1);
  print(num2 * num1);
  print(num2 / num1);
  print(num2 % num1);

// ****************** Unary Operator***************

  print('\n Unary operator');
  int age = 10;
  age++;
  age += 2;
  ++age;
  print(age);

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0

// ****************** Null aware operator ***************
//(?.) (??) (??=)
  print('\n Null aware operator ');
  var number = null;

  //if number is null then it will assign 100 into n
  int n = number ?? 100;
  print(n);


  // ****************** Ternary operator ***************

  int x = 100;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print('This is Ternary Operator $result');

  // ****************** Relational operator ***************
  //it will be discus in Conditional statement


  //bit wise left shift, right shift and or and

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000



}
