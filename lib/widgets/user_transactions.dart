import 'package:flutter/material.dart';
import 'package:hey_look/widgets/new_transaction.dart';
import 'package:hey_look/widgets/transactions_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NewTransaction(_addNewTransaction),
          TransactionList(_transactions)
        ],
      ),
    );
  }
}
