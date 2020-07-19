import 'package:e_commerce_app/widgets/search_card_widget.dart';
import 'package:flutter/material.dart';

class OrdersWidget extends StatefulWidget {
  @override
  _OrdersWidgetState createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchCardWidget(),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 3,
          ),
          child: Text('-No orders currently-'),
        ),
      ],
    );
  }
}
