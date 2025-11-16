void main() {
  // Create 3 bank accounts
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11223", "Charlie", "Savings");

  // Perform deposits
  account1.deposit(1500.0);
  account2.deposit(1000.0);
  account3.deposit(500.0);

  // Perform withdrawals
  account2.withdraw(200.0);
  account3.withdraw(600.0); // should trigger insufficient funds message

  // Display account information
  print("");
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
}

class BankAccount {
  String accountNumber;
  String accountHolder;
  String accountType;
  double balance;

  // Constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
    : balance = 0.0;

  // Deposit method
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} to $accountNumber");
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from $accountNumber");
    } else {
      print(
        "Insufficient funds for withdrawal of \$${amount.toStringAsFixed(2)} from account $accountNumber",
      );
    }
  }

  // Get balance method
  double getBalance() {
    return balance;
  }

  // Display account information
  void displayAccountInfo() {
    print(
      "Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: ${balance.toStringAsFixed(2)}",
    );
  }
}
