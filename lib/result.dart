import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;
  Result(this.restartQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.orange,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You did it!',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                child: Text('Start again'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: restartQuiz,
              ),
            )
          ],
        ),
      ),
    );
  }
}
