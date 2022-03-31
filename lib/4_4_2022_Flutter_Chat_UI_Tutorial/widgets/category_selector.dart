import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).primaryColor);
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectIndex ? Colors.white : Colors.white60,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Teko',
                    letterSpacing: 1.25,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
