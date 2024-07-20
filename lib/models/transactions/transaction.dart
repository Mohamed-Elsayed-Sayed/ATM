import '../account.dart';

abstract class Transaction {
  final int transactionId;

  Transaction(this.transactionId);

  double execute(Account account);
}
