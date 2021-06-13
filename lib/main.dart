import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<QuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What is food?',
        'answers': [
          {'fud': false},
          {'fooood': true},
          {'fodd': false}
        ]
      },
      {
        'questionText': 'What is life?',
        'answers': [
          {'42': true},
          {'21': false},
          {'9': false},
          {'0': false}
        ]
      },
      // {
      //   'questionText': 'What is this?',
      //   'answers': ['A smoothie', 'an app', 'spartan']
      // }
    ];

    // const simpleMap = {'hi': 'bye', 'yes': 'no'};

    // simpleMap.forEach((key, value) {
    //   print(key);
    // });

    void _answerQuestion(int score) {
      if (_questionIndex < _questions.length)
        setState(() {
          _questionIndex = _questionIndex + 1;
        });

      _totalScore += score;
    }

    return MaterialApp(
        title: "Hey Look",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result(_totalScore)));
  }
}
