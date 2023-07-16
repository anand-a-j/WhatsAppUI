import 'package:flutter/material.dart';
import 'package:whatsapp_chat_ui/widgets/community_card.dart';

class CoummunityScreen extends StatelessWidget {
  const CoummunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            titleTextStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
            title: Text("New community"),
          ),
          Divider(
            thickness: 8,
            color: Color.fromARGB(255, 6, 11, 14),
          ),
          CommunityCard()
        ],
      ),
    );
  }
}
