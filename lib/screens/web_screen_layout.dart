import 'package:flutter/material.dart';
import 'package:responsive_layout/widgets/contacts_list.dart';
import 'package:responsive_layout/widgets/chat_list.dart';
import 'package:responsive_layout/widgets/web/web_chat_app_bar.dart';
import '../colors/colors.dart';
import '../widgets/web/web_profile_bar.dart';
import '../widgets/web/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  // Web Profile Bar
                  WebProfileBar(),
                  // Web Search Bar
                  WebSearchBar(),
                  ContactsList()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(fit: BoxFit.cover, image: AssetImage(""))),
            child: Column(
              children: [
                const WebChatAppbar(),
                const Expanded(child: ChatList()),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.attach_file_outlined,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Expanded(
                        child: TextField(
                          cursorColor: Colors.white70,
                          decoration: InputDecoration(
                              filled: true,
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: mobileChatBoxColor,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 10),
                              hintText: "Type a Message"),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.mic, size: 25, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
