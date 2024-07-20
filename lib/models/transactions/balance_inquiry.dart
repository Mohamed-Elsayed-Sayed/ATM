import '../account.dart';
import 'transaction.dart';

class BalanceInquiry extends Transaction {
  BalanceInquiry(super.transactionId);

  @override
  double execute(Account account) {
    print('Balance Inquiry for account: ${account.accountNumber}');
    print('Current Balance: \$${account.balance}');
    return account.balance;
  }
}
