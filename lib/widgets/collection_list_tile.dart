import 'package:flutter/material.dart';

class CollectionListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final Color bgColor;

  const CollectionListTile(
      this.imageUrl, this.title, this.subTitle, this.bgColor);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: bgColor,
      elevation: 3,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 200,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 10,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                right: 10,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).accentColor,
                ),
                bottom: 10,
                right: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
