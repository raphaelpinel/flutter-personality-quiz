import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;
  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are gentle, pure, quiet and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable, joyful and alive!';
    } else if (resultScore <= 16) {
      resultText = 'You can be sometimes nervous, nasty or even strange';
    } else {
      resultText = 'You are wounded, violent, often angry, even sometimes dangerous or destructive';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.center,
        
        color: Colors.orange,
        width: double.infinity,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              // margin: EdgeInsets.all(20),
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
