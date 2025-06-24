class BankAccount {
  // Private variable
  double _balance = 0.0;

  // Getter
  double get balance => _balance;

  // Deposit method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    }
  }

  // Withdraw method with validation
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance');
    }
  }
}
