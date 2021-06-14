import 'package:flutter/material.dart';
import 'package:hey_look/models/transaction.dart';
import 'package:hey_look/widgets/new_transaction.dart';
import 'package:hey_look/widgets/user_transactions.dart';

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
      color: Colors.red,
    );
  }
}

// final titleController = TextEditingController();
// final priceController = TextEditingController();

class ExpensePlannerApp extends StatefulWidget {
  @override
  _ExpensePlannerAppState createState() => _ExpensePlannerAppState();
}

class _ExpensePlannerAppState extends State<ExpensePlannerApp> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 't1', title: "New Shoes", price: 10000, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Weekly Groceries", price: 3000, date: DateTime.now())
  ];

  void _addNewTransaction(String title, int price) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        price: price,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Planner"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: Text("Chart"),
            ),
            UserTransactions()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
