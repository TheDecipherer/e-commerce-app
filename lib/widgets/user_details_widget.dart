import 'package:flutter/material.dart';

class UserDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
      ),
      child: Card(
        elevation: 1,
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: Text('VS'),
          ),
          title: Text(
            '+91 9878 876 987',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
