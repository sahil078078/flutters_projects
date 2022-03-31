import 'package:flutter/material.dart';

class FavoriteCotacts extends StatelessWidget {
  const FavoriteCotacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Favorite Contacts",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
              fontFamily: 'Courgette',
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 35,
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
