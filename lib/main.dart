import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
    print(_questionIndex);
  }

  _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Blue', 'score': 2, 'buttonColor': Colors.blue},
          {'text': 'Green', 'score': 3, 'buttonColor': Colors.green},
          {'text': 'Purple', 'score': 6, 'buttonColor': Colors.purple},
          {
            'text': 'Yellow',
            'score': 2,
            'buttonColor': Colors.yellow,
            'textColor': Colors.black
          },
          {'text': 'Red', 'score': 7, 'buttonColor': Colors.red},
          {
            'text': 'White',
            'score': 0,
            'buttonColor': Colors.white,
            'textColor': Colors.black
          },
          {'text': 'black', 'score': 10, 'buttonColor': Colors.black},
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'spider', 'score': 10, 'buttonColor': Colors.black},
          {'text': 'rabbit', 'score': 0, 'buttonColor': Colors.grey,},
          {'text': 'snake', 'score': 10, 'buttonColor': Colors.red},
          {'text': 'swan', 'score': 0, 'buttonColor': Colors.white, 'textColor': Colors.black},
          {'text': 'dog', 'score': 4, 'buttonColor': Colors.yellow, 'textColor': Colors.black},
        ]
      },
      {
        'questionText': 'what\'s your favorite beverage?',
        'answers': [
          {'text': 'beer', 'score': 8, 'buttonColor': Colors.yellow, 'textColor': Colors.black},
          {'text': 'whine', 'score': 7, 'buttonColor': Colors.red},
          {'text': 'tea', 'score': 3, 'buttonColor': Colors.grey,},
          {'text': 'milk', 'score': 2, 'buttonColor': Colors.white, 'textColor': Colors.black},
          {'text': 'coffee', 'score': 5, 'buttonColor': Colors.black},
          {'text': 'water', 'score': 0, 'buttonColor': Colors.white, 'textColor': Colors.black},
          {'text': 'vodka', 'score': 10, 'buttonColor': Colors.blue},
        ]
      }
    ];

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
          backgroundColor: Colors.orange,
          appBar: AppBar(
            title: Column(
              children: <Widget>[
                Text(
                  'Personality Quiz',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Find out who you really are',
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
