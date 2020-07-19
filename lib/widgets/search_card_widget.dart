import 'package:flutter/material.dart';

class SearchCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
          ),
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: TextField(
          decoration: InputDecoration(
            labelText: 'Try Formals, Casuals or try by Product Code',
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 12,
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 8,
          ),
          child: Icon(
            Icons.mic,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
