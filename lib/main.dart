import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expencess App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
                child: Text('CHART'),
                width: double.infinity,
                color: Colors.blueAccent,
              ),
              elevation: 5,
            ),
            Column(
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
                              // shadows: Shadow(),
                            ),
                          ),
                          Text(tx.date.toString(),
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                                // shadows: Shadow(),
                              )),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
