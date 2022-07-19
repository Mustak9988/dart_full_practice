import 'dart:io';


/*
Async is as like java. It runs in background thread.
Future contains two Parameter(waiting time, method what to do after waiting), it always run in background thread.
Future will be use while network calling.
in term of await we can use then keyword as well
While async is running, Other method and works does not stop. However, it runs in background thread.
Sleep works on main thread as a result it hold the application other task until sleep is done.

 */



void main() {
  goEatPizza();
}

/*
Description of the whole process
 -> first call goEatPizza. we have to put async because of the use future class.
 -> inside goEatPizza we call order method which just simply print a statement.
 -> call getPizzaOrdered
 -> inside getPizzaOrdered it will wait 4 second and return pizza name. In the mean time, chatting method works asynchronously.
 -> once getPizzaOrdered is done, then (then/await) eatAndPay will call.
 -> eatAndPay waits 4 second and hold other task until it finishes it works.
 */


void goEatPizza() async {
  order();
  //String pizza = await getPizzaOrdered();
  getPizzaOrdered().then((value) {
    eatAndPay(value);
  });
  chatting();

}

void order() {
  print('Done ordering Pizza');
}

Future<String> getPizzaOrdered() async{
  Duration waitTime = Duration(seconds: 4);
  String pizza = 'No pizza yet';
  await Future.delayed(waitTime, (){
    pizza = 'Chicken Pizza';
    print('Pizza delivered successfully.');
  });
  return pizza;
}

void chatting(){
  print('chatting...');
}

void eatAndPay(String pizza){
  Duration waitTime = Duration(seconds: 4);
  print('Holding for 4 sec');
  sleep(waitTime);
  print('paid $pizza and on my way');
}