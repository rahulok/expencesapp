import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import './transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      amount: 99.99,
      date: DateTime.now(),
      title: 'Homies things',
    ),
    Transaction(
      id: 't2',
      amount: 69.99,
      date: DateTime.now(),
      title: 'Lassuns',
    ),
  ];

  void addNewTransaction(String title, double amount) {
    var tx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //TEXT INPUT
        NewTrasaction(addNewTransaction),
        //LIST OF TRANSACTIONS
        TransactionsList(_userTransactions),
      ],
    );
  }
}
