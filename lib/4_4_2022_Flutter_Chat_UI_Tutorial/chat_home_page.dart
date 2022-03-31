import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters_projects/4_4_2022_Flutter_Chat_UI_Tutorial/Screens/chat_screen.dart';
import 'package:flutters_projects/4_4_2022_Flutter_Chat_UI_Tutorial/widgets/favorite_contacts.dart';
import 'package:flutters_projects/4_4_2022_Flutter_Chat_UI_Tutorial/widgets/recent_chats.dart';

import 'Models/message_model.dart';
import 'widgets/category_selector.dart';

class MyChatHomePage extends StatelessWidget {
  const MyChatHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Chat UI",
      theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(backgroundColor: Colors.red),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          iconSize: 30,
        ),
        centerTitle: true,
        title: const Text(
          "chats",
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Courgette',
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffef9eb),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: <Widget>[
                    const FavoriteCotacts(),
                    SizedBox(
                      height: 120,
                      // color: Colors.blue,
                      child: ListView.builder(
                          padding: EdgeInsets.only(left: 10),
                          scrollDirection: Axis.horizontal,
                          itemCount: favorites.length,
                          itemBuilder: (BuildContext, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          ChatScreen(user: favorites[index]),
                                    ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 35.0,
                                      backgroundImage:
                                          AssetImage(favorites[index].imageUrl),
                                    ),
                                    const SizedBox(height: 6.0),
                                    Text(
                                      favorites[index].name,
                                      style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Courgette",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const RecentChats(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
