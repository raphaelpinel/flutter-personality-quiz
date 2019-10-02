import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 2 chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a quizz'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question'),
            RaisedButton(
              child: Text('Question1'),
              onPressed: () => print('answer 1 chosen'),
            ),
            RaisedButton(
              child: Text('Question2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Question3'),
              onPressed: () {
                // ...
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
