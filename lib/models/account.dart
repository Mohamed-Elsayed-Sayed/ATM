class Account {
  final int accountNumber;
  final String accountName;
  final int accountPassword;
  double balance;

  Account(
      {required this.accountNumber,
      required this.accountName,
      required this.accountPassword,
      required this.balance});
}
