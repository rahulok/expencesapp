import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionsList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      //Transactions
      children: transactions.map((tx) {
        return Card(
          child: Row(
            //Row
            children: <Widget>[
              Container(
                //Amount
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                //Title and date
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    //tx.date.toString(),
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
