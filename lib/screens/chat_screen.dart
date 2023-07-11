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
            tileColor: const Color.fromRGBO(17, 27, 33, 1),
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                textBaseline: TextBaseline.alphabetic
                ),
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
                        size: 14,
                        weight: 100,
                        grade: -25,
                  
                      )
                    : Icon(
                        Icons.done_all,
                        color: Color.fromARGB(255, 116, 117, 118),
                        size: 14,
                        weight: 100,
                        grade: -25,
                        
                      ),
                Text(chats[index]['message'] as String,
                    style: TextStyle(
                        color: Color.fromRGBO(133, 149, 159, 1), fontSize: 14))
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  chats[index]['time'] as String,
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(133, 149, 159, 1)),
                ),
                const SizedBox(
                  height: 5,
                ),
                chats[index]['viewed'] == false
                    ? Icon(Icons.circle,
                        size: 22, color: const Color(0xff00a884))
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
