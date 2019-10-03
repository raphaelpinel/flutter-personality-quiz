import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    print(_questionIndex);
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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quizz'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]['questionText']),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(text: 'Hello', children: [
                    TextSpan(
                        text: ' beautiful ',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'world',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answer, _answerQuestion))
                .toList(),
          ],
        ),
      ),
    );
  }
}
