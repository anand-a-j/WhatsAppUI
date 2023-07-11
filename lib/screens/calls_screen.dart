import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  final List<Map<String, Object>> calls;
 const CallsScreen({
    super.key,
    required this.calls,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
         const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Recent',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                  itemCount: calls.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(calls[index]['imageUrl'] as String),
                        ),
                        title: Text(calls[index]['name'] as String),
                        subtitle: Row(
                          children: [
                            calls[index]['incoming'] == true
                                ? const Icon(
                                    Icons.call_received,
                                    color: Colors.red,
                                    size: 14,
                                  )
                                : const Icon(
                                    Icons.call_made,
                                    color: Colors.green,
                                    size: 14,
                                  ),
                            Text(calls[index]['time'] as String)
                          ],
                        ),
                        trailing: index.isEven
                            ? Icon(Icons.call)
                            : Icon(Icons.videocam));
                  }),
            ),
        ],
      ),
    );
  }
}
