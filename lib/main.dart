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
          {'text': 'Blue', 'score': 2},
          {'text': 'Green', 'score': 3},
          {'text': 'Purple', 'score': 6},
          {'text': 'Orange', 'score': 2},
          {'text': 'Red', 'score': 7},
          {'text': 'White', 'score': 0},
          {'text': 'black', 'score': 10},
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'spider', 'score': 10}, 
          {'text': 'rabbit', 'score': 0}, 
          {'text': 'snake', 'score': 10}, 
          {'text': 'swan', 'score': 0}, 
          {'text': 'dog', 'score': 4},
          ]
      },
      {
        'questionText': 'what\'s your favorite beverage?',
        'answers': [
          {'text': 'beer', 'score': 8}, 
          {'text': 'whine', 'score': 7}, 
          {'text': 'tea', 'score': 3}, 
          {'text': 'milk', 'score': 2}, 
          {'text': 'coffee', 'score': 5}, 
          {'text': 'water', 'score': 0}, 
          {'text': 'vodka', 'score': 10},
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
                Text('Personality Quiz', style: TextStyle(fontSize: 24),),
                Text('Find out who you really are', style:TextStyle(fontSize: 14),)
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
