import 'package:flutter/material.dart';

import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
              ),
            ),
            Column(
                children: transactions.map((trns) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Text(trns.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(trns.title),
                        Text(trns.date.toString()),
                      ],
                    ),
                  ],
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
