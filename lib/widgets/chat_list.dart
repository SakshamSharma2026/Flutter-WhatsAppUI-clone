import 'package:flutter/material.dart';
import 'package:responsive_layout/model/user_info.dart';
import 'package:responsive_layout/widgets/my_message_card.dart';
import 'package:responsive_layout/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage('assets/images/backgroundImage.png'))),
      child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            if (messages[index]['isMe'] == true) {
              //My Message Card
              return MyMessageCard(
                  message: messages[index]['text'].toString(),
                  date: messages[index]['time'].toString());
            } else {
              return SenderMessageCard(
                  message: messages[index]['text'].toString(),
                  date: messages[index]['time'].toString());
              // Sender Message Card
            }
          }),
    );
  }
}
