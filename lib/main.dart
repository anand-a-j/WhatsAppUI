import 'package:flutter/material.dart';
// import 'package:whatsapp_chat_ui/calls_screen.dart';
// import 'package:whatsapp_chat_ui/data_for_status.dart';
// import 'package:whatsapp_chat_ui/dataforcalls.dart';
// import 'package:whatsapp_chat_ui/status_screen.dart';
import 'package:whatsapp_chat_ui/screens/chat_screen.dart';
import 'package:whatsapp_chat_ui/data_for_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(chats: chats),
      // home: CallsScreen(calls: calls)
      // home: StatusScreen(recentStatus: recentstatus, viewedStatus: viewedStatus)
    );
  }
}

