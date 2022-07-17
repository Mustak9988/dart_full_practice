
class Animal{

  String? _type;
  String? _name;
  num _age;
  int? _size;

  Animal({required String type, required String name, required num age, required int size}):
      this._type = type, this._name = name, this._age = age, this._size = size;

  get getType => _type;

  //don't need set type because I am assigning value using constructor
 // set setType(String type) => _type = type;


 void printAnimal(){
   print("private variable with data \nName is : ${_name}");
   print("age is : ${_age}");
   print("size is : ${_size}");
 }

  //if I make it private then I will have no access
  void _printPrivateAnimal(){
    print("private method\nName is : ${_name}");
    print("age is : ${_age}");
    print("size is : ${_size}");
  }

  get printPrivateAnimal => _printPrivateAnimal();

}