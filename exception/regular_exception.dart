void main() {
  //basic try catch example
  var list = [1, 2, 3, 4, 5];
  try {
    list.insert(6, 100);
  } catch (e, f) {
    print('Exception Details: $e');
  } finally {
    list.insert(5, 100);
    list.forEach(print);
  }

  //Bank Account
  //while exception is unknown and print own message
  try {
    OpenBankAccount.Amount(amount: -100);
  } on Exception catch (e) {
    print(e);
  }
}


class OpenBankAccount {
  double _amount;

  OpenBankAccount.Amount({required double amount}) : _amount = amount {
    if (_amount < 0)
      throw Exception('Balance Should be more than 0 ');
    else
      print('Account Created');
  }
}
