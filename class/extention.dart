//I would like to add an operation in List(Dark define library) called average

extension ListAverage on List<int>{
  double average(){
    var sum = 0;
    forEach((element) { sum += element; });
   //  for(var x in this){
   //    sum += x;
   //  }
    return (sum /this.length);
  }
}

void main(){
  var list = [1,2,3,4,5];
  print(list.average());

  var list2 = [12,2];
  print(list2.average());

}