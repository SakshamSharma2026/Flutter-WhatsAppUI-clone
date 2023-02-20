import 'package:flutter/material.dart';
import 'package:responsive_layout/colors/colors.dart';
import 'package:responsive_layout/model/user_info.dart';
import 'package:responsive_layout/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios_new)),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(userInfo[0]['profilePic'].toString()),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      userInfo[0]['name'].toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.video_call,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
            const Expanded(child: ChatList()),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.white70,
                      decoration: InputDecoration(
                          filled: true,
                          hintStyle: const TextStyle(color: Colors.white),
                          fillColor: mobileChatBoxColor,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.only(top: 10, left: 40),
                          prefixIcon: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                          suffixIcon: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min, // added line
                              children: const [
                                Icon(
                                  Icons.attach_file_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.currency_rupee_rounded,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          hintText: "Message"),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: messageColor,
                    ),
                    child: const Icon(Icons.mic, size: 25, color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
