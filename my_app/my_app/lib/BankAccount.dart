class BankAccount {
  String _accountName;
  int _balance;

  BankAccount(this._accountName, this._balance);

  void deposit(int amount) {
    if (amount > 0) {
      _balance += amount;
      print('$_accountName has been deposited $amount');
      print('Current balance is $_balance');
    }
  }

  void withdraw(int amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('$_accountName has been withdrew $amount');
      print('Current balance is $_balance');
    }
  }
}
