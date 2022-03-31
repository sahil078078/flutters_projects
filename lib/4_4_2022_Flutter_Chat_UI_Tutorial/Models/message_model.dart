import 'package:flutters_projects/4_4_2022_Flutter_Chat_UI_Tutorial/Models/user_model.dart';

class Message {
  late User sender;
  late String time;
  late String text;
  late bool isLiked;
  late bool unread;

  Message({
    required this.sender,
    required this.text,
    required this.time,
    required this.isLiked,
    required this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/man1.png',
);

final User user1 = User(
  id: 1,
  name: 'Tommy',
  imageUrl: 'assets/images/man2.png',
);

final User user2 = User(
  id: 2,
  name: 'Jerry',
  imageUrl: 'assets/images/man3.png',
);

final User user3 = User(
  id: 3,
  name: 'Jack',
  imageUrl: 'assets/images/woman1.png',
);

final User user4 = User(
  id: 4,
  name: 'Lisa',
  imageUrl: 'assets/images/woman2.png',
);

final User user5 = User(
  id: 5,
  name: 'Bekky',
  imageUrl: 'assets/images/woman3.png',
);

final User user6 = User(
  id: 6,
  name: 'Sonia',
  imageUrl: 'assets/images/woman4.png',
);

final User user7 = User(
  id: 7,
  name: 'Kitty',
  imageUrl: 'assets/images/woman5.png',
);

final User user8 = User(
  id: 8,
  name: 'Jenny',
  imageUrl: 'assets/images/woman6.png',
);

List<User> favorites = [user1, user2, user3, user4, user6, user8];

List<Message> chats = [
  Message(
    sender: user1,
    time: '5:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user2,
    time: '4:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user3,
    time: '3:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user4,
    time: '2:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user5,
    time: '11:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: user6,
    time: '1:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: user7,
    time: '2:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user8,
    time: '10:30 PM',
    text: 'Hey,How\'s it going ? What did you do today',
    isLiked: true,
    unread: true,
  ),
];
