class Item {
  late final num id;

  late final String name;
  late final String desc;
  late final num price;
  late final String color;
  late final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

class CatalogModel {
  static final itemList = [
    Item(
      id: 101,
      name: 'Apple iPhone1',
      desc: 'Apple iPhone First Generation was launched in June 2007',
      price: 999,
      color: '#33505a',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuoJo2jZxnIcjPmRRQggm95ZjGMkBiTJvPog&usqp=CAU',
    ),
  ];
}
