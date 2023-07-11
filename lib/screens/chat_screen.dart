import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final List<Map<String, Object>> chats;
  const ChatScreen({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ListTile(
            tileColor: Colors.white,
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                textBaseline: TextBaseline.alphabetic),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chats[index]['image'] as String),
            ),
            title: Text(
              chats[index]['name'] as String,
            ),
            subtitle: Row(
              children: [
                chats[index]['blueTick'] == true
                    ? Icon(
                        Icons.done_all,
                        color: Color(0xff4FB6EC),
                        size: 18,
                      )
                    : Icon(
                        Icons.done_all,
                        color: Color.fromARGB(255, 116, 117, 118),
                        size: 18,
                      ),
                Text(chats[index]['message'] as String,
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 117, 117),
                        fontSize: 14))
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  chats[index]['time'] as String,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                chats[index]['viewed'] == false
                    ? Icon(Icons.circle,
                        size: 22, color: const Color.fromARGB(255, 66, 210, 71))
                    : Visibility(
                        child: Icon(Icons.circle),
                        visible: false,
                      ),
              ],
            ),
          );
        },
        itemCount: chats.length,
      ),
    );
  }
}



   