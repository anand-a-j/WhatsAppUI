import 'package:flutter/material.dart';
import 'package:whatsapp_chat_ui/info.dart';
import 'package:whatsapp_chat_ui/screens/calls_screen.dart';
import 'package:whatsapp_chat_ui/screens/chat_screen.dart';
import 'package:whatsapp_chat_ui/screens/status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(32, 44, 51, 1),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Color.fromRGBO(164, 176, 183, 1),
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton.outlined(
              onPressed: () {},
              icon: const Icon(
                Icons.photo_camera_outlined,
                
              ),
            ),
            SizedBox(width: 15),
            Icon(Icons.search),
            SizedBox(width: 15),
            SizedBox(width: 15),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: TabBar(

                labelColor: Color(0xff00a884),
                unselectedLabelColor: Color.fromRGBO(133, 149, 159, 1),
                tabs: [
                  SizedBox(height: 30, child: Icon(Icons.group)),
                  SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Chats  "),
                        CircleAvatar(
                          backgroundColor: Color(0xff00a884),
                          radius: 8,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(17, 27, 33, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Center(
                      child: Text(
                        "Status",
                      ),
                    ),
                  ),
                  SizedBox(height: 30, child: Center(child: Text("Calls")))
                ],),
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text(
                "community",
                style: TextStyle(fontSize: 30, color: Colors.teal),
              ),
            ),
            ChatScreen(chats: chats),
            StatusScreen(
                recentStatus: recentstatus, viewedStatus: viewedStatus),
            CallsScreen(calls: calls)
          ],
        ),
      ),
    );
  }
}
