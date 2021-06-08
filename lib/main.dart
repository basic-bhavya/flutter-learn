import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var questionIndex = 0;

  var questions = ['What is food?', 'What is life?', 'What is this?'];

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print("answered");
      setState(() {
        questionIndex = questionIndex + 1;
      });
    }

    return MaterialApp(
        title: "Hey Look",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
            ),
            body: Column(
              children: [
                Question(questions[questionIndex]),
                Answer()
                // onPressed: answerQuestion, child: Text("Answer 1"))
              ],
            )));
  }
}
