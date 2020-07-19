import 'package:e_commerce_app/widgets/search_card_widget.dart';
import 'package:flutter/material.dart';

import 'home_screen_card_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SearchCardWidget(),
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 6,
          ),
          child: Card(
            elevation: 3,
            child: Image.asset('assets/images/home_page_1.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListTile(
            dense: true,
            title: Text(
              'Just for you',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
              ),
            ),
            trailing: Icon(
              Icons.filter_list,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        HomeScreenCardWidget(),
      ],
    );
  }
}
