class OpenBankAccount {
  double _amount;
  OpenBankAccount.Amount({required double amount}) : _amount = amount {
    if (_amount < 0)
      throw ZeroBalanceException(amount);
    else
      print('Account Created');
  }
}

//create custom exception
class ZeroBalanceException implements Exception{
  final num balance;
  const ZeroBalanceException(this.balance);

  @override
  String toString() {
    return 'ZeroBalanceException: Balance should be more than 0 and your balance is :$balance';
  }
}

void main(){

  try{
    OpenBankAccount.Amount(amount: -100);
  }on ZeroBalanceException catch(e){
    print(e);
  }

  print("Outside of Try catch block");

}