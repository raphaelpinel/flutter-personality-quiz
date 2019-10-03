import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function selectHandler;
  Answer(this._answerText, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        onPressed: selectHandler,
        color: Colors.green,
        textColor: Colors.white
      ),
    );
  }
}