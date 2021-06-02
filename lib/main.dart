import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Hey Look",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blueGrey),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change This";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Something")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.asset("assets/cboard.jpg", fit: BoxFit.cover),
                SizedBox(height: 20),
                Text(
                  myText,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          hintText: "Enter something good",
                          labelText: "Good label",
                          border: OutlineInputBorder())),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
