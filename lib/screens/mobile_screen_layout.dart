import 'package:flutter/material.dart';
import 'package:responsive_layout/colors/colors.dart';

import '../widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
            bottom: TabBar(
                labelColor: tabColor,
                indicatorWeight: 4,
                unselectedLabelColor: Colors.grey,
                indicatorColor: tabColor,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  const Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Chats"),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: tabColor, shape: BoxShape.circle),
                          width: 18,
                          height: 18,
                          child: const Center(
                              child: Text(
                            "3",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: appBarColor),
                          )),
                        )
                      ],
                    ),
                  ),
                  const Tab(
                    text: "Status",
                  ),
                  const Tab(
                    text: "Calls",
                  )
                ]),
          ),
          body: const ContactsList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            child: const Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ),
        ));
  }
}
