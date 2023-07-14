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
            title: Text("New community"),
          ),
          SizedBox(
            height: 10,
          ),
          CommunityCard()
        ],
      ),
    );
  }
}
