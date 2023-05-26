import 'package:flutter/material.dart';
import "../models/transaction.dart";
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      't1',
      'New Shoes',
      69.99,
      DateTime.now(),
    ),
    Transaction("t2", "Second transaction", 56.4, DateTime.now()),
  ];

  void _addTransaction(txTitle, txAmount) {
    final transaction = Transaction(
        DateTime.now().toString(), txTitle, txAmount, DateTime.now());
    setState(() {
      _userTransactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
