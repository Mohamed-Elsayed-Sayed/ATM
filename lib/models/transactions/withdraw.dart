import '../account.dart';
import 'transaction.dart';

class Withdraw extends Transaction {
  final double amount;

  Withdraw(super.transactionId, this.amount);

  @override
  double execute(Account account) {
    if (account.balance >= amount) {
      account.balance -= amount;
      print('Withdraw of \$${amount} from account: ${account.accountNumber}');
      print('New Balance: \$${account.balance}');
      return account.balance;
    } else {
      print(
          'Insufficient funds for withdrawal in account: ${account.accountNumber}');
      return account.balance;
    }
  }
}
