import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;
  Result(this.resultScore, this.restartQuiz);

  Map<String, Object> get result {
    String text;
    Color textColor;
    Color background;
    if (resultScore <= 8) {
      text = 'You are gentle, pure, quiet and innocent';
      background = Colors.white;
      textColor = Colors.pink;
    } else if (resultScore <= 12) {
      text = 'You are pretty likeable, joyful and alive!';
      background = Colors.orange;
      textColor = Colors.green;
    } else if (resultScore <= 16) {
      text = 'You can be sometimes nervous, nasty or even strange';
      background = Colors.red;
      textColor = Colors.white;
    } else {
      text = 'You are wounded, violent, often angry, even sometimes dangerous or destructive';
      background = Colors.black;
      textColor = Colors.red;
    }
    return {'text': text, 'textColor': textColor, 'background': background};
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.center,
        
        color: result['background'],
        width: double.infinity,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              result['text'],
              style: TextStyle(
                  fontSize: 36,
                  color: result['textColor'],
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
