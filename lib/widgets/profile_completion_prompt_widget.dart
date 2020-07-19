import 'package:flutter/material.dart';

class ProfileCompletionPromptWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 4,
      ),
      child: Card(
        elevation: 1,
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text(
            'Your profile is 17% complete',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 17,
            ),
          ),
          subtitle: Text(
            'Complete your profile to start earning',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 11,
              fontStyle: FontStyle.italic,
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
