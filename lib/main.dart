import 'package:flutter/material.dart';
import './user_transactions.dart';

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
  // String titleInput, amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expencess App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //CHART
            Card(
              child: Container(
                child: Text('CHART'),
                width: double.infinity,
                color: Colors.blueAccent,
              ),
              elevation: 5,
            ),
            //TEXT INPUT FIELD
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    UserTransactions(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
