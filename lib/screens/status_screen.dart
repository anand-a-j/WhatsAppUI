import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final List<Map<String, Object>> recentStatus;
  final List<Map<String, Object>> viewedStatus;
  const StatusScreen(
      {super.key, required this.recentStatus, required this.viewedStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: Stack(children: [
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5HCgPxeyRGQgieXNBopHwg1KINwrplclcyA&usqp=CAU'),
                ),
                Positioned(
                    bottom: -2,
                    right: -2,
                    child: Icon(
                      Icons.add_circle,
                      color: Color.fromARGB(255, 16, 97, 38),
                      size: 20,
                      fill: 1,
                    ))
              ]),
              title: Text('My status'),
              subtitle: Text('Tap to add status update'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Recent Updates',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: recentStatus.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                recentStatus[index]['imageUrl'] as String),
                          ),
                        ),
                      ),
                      title: Text(recentStatus[index]['name'] as String),
                      subtitle: Text(recentStatus[index]['time'] as String),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Viewed Updates',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: viewedStatus.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 24,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 22,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                viewedStatus[index]['imageUrl'] as String),
                          ),
                        ),
                      ),
                      title: Text(viewedStatus[index]['name'] as String),
                      subtitle: Text(viewedStatus[index]['time'] as String),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
