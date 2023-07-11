import 'package:flutter/material.dart';
import 'package:whatsapp_chat_ui/info.dart';
import 'package:whatsapp_chat_ui/screens/home_screen.dart';
// import 'package:whatsapp_chat_ui/screens/calls_screen.dart';
import 'package:whatsapp_chat_ui/screens/status_screen.dart';
// import 'package:whatsapp_chat_ui/status_screen.dart';
import 'package:whatsapp_chat_ui/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(17, 27, 33, 1),
          primarySwatch: Colors.teal,
          fontFamily: 'Roboto',
          ),
      // home: ChatScreen(chats: chats),
     // home: CallsScreen(calls: calls)
      // home: StatusScreen(recentStatus: recentstatus, viewedStatus: viewedStatus)
      home: HomeScreen(),
    );
  }
}
