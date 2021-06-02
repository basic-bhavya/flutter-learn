import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Hey Look",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Something")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            children: [Image.asset("assets/cboard.jpg", fit: BoxFit.fitWidth)],
          ),
        ),
      )),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
