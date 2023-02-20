import 'package:flutter/material.dart';
import 'package:responsive_layout/colors/colors.dart';
import 'package:responsive_layout/widgets/mobile/mobile_chat_screen.dart';
import '../model/user_info.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  bool isRead = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: userInfo.length,
        itemBuilder: (context, index) {
          if (userInfo[index]['unread'].toString().isEmpty) {
            isRead = true;
          } else {
            isRead = false;
          }
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MobileChatScreen()));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage:
                        NetworkImage(userInfo[index]['profilePic'].toString()),
                  ),
                  title: Text(
                    userInfo[index]['name'].toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Row(
                      children: [
                        Icon(
                          isRead ? Icons.done_all : Icons.done,
                          size: 18,
                          color: isRead ? Colors.blue : Colors.grey,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          userInfo[index]['message'].toString(),
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        userInfo[index]['time'].toString(),
                        style: TextStyle(
                          fontSize: 12,
                          color: isRead ? Colors.grey : tabColor,
                        ),
                      ),
                      Visibility(
                        visible: !isRead,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: tabColor, shape: BoxShape.circle),
                          width: 18,
                          height: 18,
                          child: Center(
                              child: Text(
                            userInfo[index]['unread'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: appBarColor),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 45,
                endIndent: 45,
              )
            ],
          );
        });
  }
}
