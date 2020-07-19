import 'package:flutter/material.dart';

class ProfileOptionsWidget extends StatelessWidget {
  final String optionText;

  const ProfileOptionsWidget(this.optionText);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        optionText,
        style: TextStyle(
          fontSize: 14,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
