import 'package:flutter/material.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("New community"),
            ),
          Divider(),
           ListTile(
              leading: CircleAvatar(),
              title: Text("Announcements"),
              subtitle: Text("Flutter community group"),
              trailing: Text("11/07/2023"),
            ),
            ListTile(
            leading: CircleAvatar(),
            title: Text("Flutter Community Group"),
            subtitle: Text("~ Chandler Bing: Hello Everyone!"),
            trailing: Text("Yesterday"),
          ),
            ListTile(
            leading: Icon(Icons.chevron_right),
            title: Text("View all"),
          ),
        ],
      ),
    );
  }
}
