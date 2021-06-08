import 'package:flutter/material.dart';

// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(title: "Hey Look", home: Text("Hello guys!")));
}
