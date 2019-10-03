import 'package:flutter/material.dart';

import './question.dart';

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
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quizz'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]),
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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('pressed answer 2'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...
                print('pressed answer 3');
              },
            )
          ],
        ),
      ),
    );
  }
}
