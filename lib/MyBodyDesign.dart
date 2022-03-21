import 'package:flutter/material.dart';
import 'package:flutters_projects/models/catelog.dart';

import 'Widgets/item_widget.dart';

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(200, (index) => CatalogModel.itemList[0]);
    return ListView.builder(
        // itemCount: CatalogModel.itemList.length,
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            // item: CatalogModel.itemList[index],
            item: dummyList[index],
          );
        });
  }
}
