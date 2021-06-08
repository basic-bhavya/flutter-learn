import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.amber),
          child: Text("Answer 1"),
          onPressed: () {},
        ));
  }
}
