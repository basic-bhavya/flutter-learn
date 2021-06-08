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
  var _questionIndex = 0;

  var questions = [
    {
      'questionText': 'What is food?',
      'answers': ['fud', 'fooood', 'fodd']
    },
    {
      'questionText': 'What is life?',
      'answers': ['42', '21', '9', '0']
    },
    {
      'questionText': 'What is this?',
      'answers': ['A smoothie', 'an app', 'spartan']
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      print("answered");
      setState(() {
        _questionIndex = _questionIndex + 1;
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
                Question((questions[_questionIndex]['questionText'] as String)),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((ans) {
                  return Answer(_answerQuestion, ans);
                }).toList()
                // onPressed: answerQuestion, child: Text("Answer 1"))
              ],
            )));
  }
}
