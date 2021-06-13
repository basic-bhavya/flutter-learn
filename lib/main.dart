import 'package:flutter/material.dart';
import 'package:hey_look/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: ExpensePlannerApp(),
    );
  }
}

class ExpensePlannerApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: "New Shoes", price: 10000, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Weekly Groceries", price: 3000, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Planner"),
      ),
      body: Column(
        children: [
          Card(
            child: Text("Chart"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: transactions
                .map((tx) => Card(
                      child: Row(
                        children: [
                          Container(
                            child: Text(tx.price.toString()),
                          ),
                          Column(
                            children: [
                              Text(tx.title as String),
                              Text(tx.date.toString())
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
