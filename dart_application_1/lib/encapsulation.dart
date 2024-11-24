class BankAccount {
  // Private fields
  String _accountHolderName;
  double _balance;

  // Constructor
  BankAccount(this._accountHolderName, this._balance);

  // Getter and Setter for account holder name
  String get accountHolderName => _accountHolderName;
  set accountHolderName(String name) => _accountHolderName = name;

  // Getter for balance
  double get balance => _balance;

  // Deposit method
  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) _balance -= amount;
  }
}

void main() {
  // Create an account
  var account = BankAccount('Ashmita', 500.0);

  // Use encapsulated fields
  print('Account Holder: ${account.accountHolderName}');
  print('Initial Balance: \$${account.balance}');

  account.deposit(200);
  account.withdraw(150);

  print('Updated Balance: \$${account.balance}');
}
