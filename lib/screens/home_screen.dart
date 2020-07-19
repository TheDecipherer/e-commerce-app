import 'package:e_commerce_app/widgets/home_widget.dart';
import 'package:e_commerce_app/widgets/placeholder_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWidget(),
    PlaceHolderWidget(Colors.blue),
    PlaceHolderWidget(Colors.green),
    PlaceHolderWidget(Colors.yellow),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi Varun,'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.folder),
            title: new Text('Collections'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.card_giftcard),
            title: new Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
