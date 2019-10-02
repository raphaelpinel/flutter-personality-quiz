import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answer1() => print('pressed on answer 1');
  @override
  Widget build(BuildContext context) {
    var questions = [
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
            Text(questions.elementAt(0)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer1,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('pressed on answer 2'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...
                print('pressed on answer 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
