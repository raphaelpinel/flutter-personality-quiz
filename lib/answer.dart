import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function selectHandler;
  final Color buttonColor;
  final Color textColor;
  Color getButtonColor() {
    return buttonColor != null ? buttonColor : Colors.green; 
  }
  Color getTextColor() {
    return textColor != null ? textColor : Colors.white;
  }
  Answer(this._answerText, this.selectHandler, {this.buttonColor, this.textColor});
  @override
  Widget build(BuildContext context) {
    print(buttonColor);
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        onPressed: selectHandler,
        color: getButtonColor(),
        textColor: getTextColor(),
      ),
    );
  }
}