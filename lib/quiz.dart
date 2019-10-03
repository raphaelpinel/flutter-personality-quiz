import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['questionText']),
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
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) => Answer(answer, answerQuestion))
              .toList(),
        ],
      ),
    );
  }
}
