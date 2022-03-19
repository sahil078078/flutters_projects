class Item {
  late final String id;

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

final products = [];
