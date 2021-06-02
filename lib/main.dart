import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Something")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
              )
            : Center(child: CircularProgressIndicator()),
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
