import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String errorText;
  final bool obscureText;

  const CustomTextField({
    @required this.controller,
    @required this.keyboardType,
    @required this.labelText,
    this.errorText,
    @required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        errorText: errorText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColorDark,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      keyboardType: keyboardType,
      controller: controller,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
