import 'package:flutter/material.dart';

class HomeScreenCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 8,
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/home_page_2.jpeg'),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Text(
                      'Top 5 Formals every Man must buy',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    bottom: 12,
                    left: 16,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.local_shipping,
                        color: Theme.of(context).primaryColor,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          'Free Shipping',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                        ),
                        child: Icon(
                          Icons.share,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 12,
            right: 8,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).accentColor,
              ),
              child: Text(
                '40% Discount',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: Icon(
              Icons.favorite_border,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
