class Animal {
  breath() => print("Breathing");
}

mixin Swimming {
  swimming() => print("Busy Swimming");
}

mixin Flying {
  flying() => print("Flying");
}

class Dog extends Animal with Swimming {}

class Shark extends Animal with Swimming {}

class Bat extends Animal with Flying{}

class Dove extends Animal with Flying {}

class Dolphin extends Animal with Swimming {}


// I can easily use the property of Swimming and Flying where required
// otherwise I had to declare those swimming and flying method in animal classes
// so using mixin I can use those method where necessary
// other solution through inheritance or static key word; However I had to override if use inheritance

void main(){
  var d = Dog();
  d.swimming();
  d.breath();
}