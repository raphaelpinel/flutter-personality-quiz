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

  final _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  _restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          'Blue',
          'Green',
          'Purple',
          'Orange',
          'Red',
          'White',
          'Orange'
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['zebra', 'rabbit', 'snake', 'swan', 'dog']
      },
      {
        'questionText': 'what\'s your favorite beverage?',
        'answers': ['beer', 'whine', 'tea', 'milk', 'coffee', 'water', 'vodka']
      }
    ];

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_restartQuiz)
      ),
    );
  }
}
