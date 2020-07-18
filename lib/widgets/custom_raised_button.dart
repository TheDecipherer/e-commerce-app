import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Function handler;
  final String buttonText;

  const CustomRaisedButton({
    @required this.handler,
    @required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: handler,
      color: Theme.of(context).primaryColor,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
