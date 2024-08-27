import 'dart:io';

import 'models/account.dart';
import 'models/transactions/balance_inquiry.dart';
import 'models/transactions/deposit.dart';
import 'models/transactions/transaction.dart';
import 'models/transactions/withdraw.dart';
import 'utils/menu.dart';

void main() {
  Account account = Account(
    accountNumber: 1111222233334444,
    accountName: 'Mohamed Elsayed',
    accountPassword: 1234,
    balance: 0,
  );

  bool running = true;

  while (running) {
    displayMenu();
    String choice = stdin.readLineSync() ?? '4';

    switch (choice) {
      case '1':
        print('Enter amount to deposit:');
        double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        Transaction deposit = Deposit(1, amount);
        deposit.execute(account);
        break;
      case '2':
        print('Enter amount to withdraw:');
        double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        Transaction withdraw = Withdraw(2, amount);
        withdraw.execute(account);
        break;
      case '3':
        Transaction balanceInquiry = BalanceInquiry(3);
        balanceInquiry.execute(account);
        break;
      case '4':
        running = false;
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
