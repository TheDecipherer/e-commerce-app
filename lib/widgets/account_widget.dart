import 'package:e_commerce_app/widgets/profile_completion_prompt_widget.dart';
import 'package:e_commerce_app/widgets/profile_options_widget.dart';
import 'package:e_commerce_app/widgets/user_details_widget.dart';
import 'package:flutter/material.dart';

class AccountsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserDetailsWidget(),
        ProfileCompletionPromptWidget(),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 4,
          ),
          child: Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 4,
                  ),
                  child: Column(
                    children: <Widget>[
                      ProfileOptionsWidget('My Bank Details >>'),
                      Divider(),
                      ProfileOptionsWidget('My Shared Collections >>'),
                      Divider(),
                      ProfileOptionsWidget('My Payments >>'),
                      Divider(),
                      ProfileOptionsWidget('Enter Referral Code >>'),
                      Divider(),
                      ProfileOptionsWidget('My Credits >>'),
                      Divider(),
                      ProfileOptionsWidget('Settings >>'),
                      Divider(),
                      ProfileOptionsWidget('Notifications >>'),
                      Divider(),
                      ProfileOptionsWidget('Rate the app >>'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
