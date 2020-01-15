import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expencess App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Container(
                child: Text('CARD'),
                width: double.infinity,
                color: Colors.blueAccent,
              ),
              elevation: 5,
            ),
            Card(
              child: Text('List of expencs'),
              color: Colors.red,
            ),
            Card(
              child: Text('data'),
              color: Colors.green,
            )
          ],
        ));
  }
}
