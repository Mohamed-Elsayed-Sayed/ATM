import '../account.dart';
import 'transaction.dart';

class Deposit extends Transaction {
  final double amount;

  Deposit(super.transactionId, this.amount);

  @override
  double execute(Account account) {
    account.balance += amount;
    print('Deposit of \$${amount} to account: ${account.accountNumber}');
    print('New Balance: \$${account.balance}');
    return account.balance;
  }
}
