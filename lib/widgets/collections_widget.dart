import 'package:flutter/material.dart';

import 'collection_list_tile.dart';

class CollectionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CollectionListTile(
          'assets/images/collections_1.jpeg',
          'Shirts',
          '1107 New',
          Theme.of(context).primaryColorLight,
        ),
        CollectionListTile(
          'assets/images/collections_2.jpeg',
          'Trousers',
          '107 new',
          Theme.of(context).primaryColorLight,
        ),
        CollectionListTile(
          'assets/images/collections_3.jpeg',
          'Tees',
          '233 New',
          Theme.of(context).primaryColorLight,
        ),
      ],
    );
  }
}
