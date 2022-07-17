import 'private_varibale_class.dart';

void main(){
  var a1 = new Animal(type: 'Mamal', name: 'Snake', age: 34, size: 6);

  //can not access unless I declare setter and getter

  print("Type is: "+a1.getType);

  //accessing through public method
  a1.printAnimal();

  //can not access private method. So we need to print using getter
  //a1._printAnimal();
  a1.printPrivateAnimal;

}