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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff222e35),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Color.fromRGBO(164, 176, 183, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions:  [
            IconButton.outlined(
              onPressed: (){},
               icon: Icon(
              Icons.photo_camera,
              grade: 1,
              weight: 100,
               )
            ),
            SizedBox(width: 15),
            Icon(Icons.search),
            SizedBox(width: 15),
            SizedBox(width: 15),
          ],
          bottom: TabBar(
            labelColor: const Color(0xff00a884),
            unselectedLabelColor: const Color.fromRGBO(133, 149, 159, 1),
            tabs: [
              Icon(Icons.group),
              Row(children: [Text("Chats "),
                      CircleAvatar(
                        backgroundColor: const Color(0xff00a884),
                        radius: 8,
                        child: Text(
                          "3",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(17, 27, 33, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],),
              Text("Status"),
              Text("Calls")
            ]
            ),
          
        
        ),
        body: TabBarView(
          children: [
           const Center(
             child: Text("community",style: TextStyle(fontSize: 30,color: Colors.teal),)
            ),
            ChatScreen(chats: chats),
            StatusScreen(recentStatus: recentstatus, viewedStatus: viewedStatus),
            CallsScreen(calls: calls)
          ]
        )
      ),
    );
  }
}
