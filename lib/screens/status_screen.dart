import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final List<Map<String, Object>> recentStatus;
  final List<Map<String, Object>> viewedStatus;
  const StatusScreen(
      {super.key, required this.recentStatus, required this.viewedStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: Stack(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5HCgPxeyRGQgieXNBopHwg1KINwrplclcyA&usqp=CAU'),
              ),
              Positioned(
                  bottom: 0,
                  right: -2,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromRGBO(17, 27, 33, 1),
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.add,
                        size: 14,
                        grade: 200,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ]),
            title: Text(
              'My status',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            subtitle: Text(
              'Tap to add status update',
              style: TextStyle(color: Color.fromRGBO(133, 149, 159, 1)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Recent Updates',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color.fromRGBO(133, 149, 159, 1)),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: recentStatus.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      titleTextStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          textBaseline: TextBaseline.alphabetic),
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: const Color.fromRGBO(17, 27, 33, 1),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                recentStatus[index]['imageUrl'] as String),
                          ),
                        ),
                      ),
                      title: Text(
                        recentStatus[index]['name'] as String,
                      ),
                      subtitle: Text(recentStatus[index]['time'] as String,
                          style: TextStyle(
                            color: Color.fromRGBO(133, 149, 159, 1),
                          )),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Viewed Updates',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color.fromRGBO(133, 149, 159, 1)),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: viewedStatus.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    titleTextStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        textBaseline: TextBaseline.alphabetic),
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromRGBO(133, 149, 159, 1),
                      radius: 24,
                      child: CircleAvatar(
                        backgroundColor: const Color.fromRGBO(17, 27, 33, 1),
                        radius: 22,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              viewedStatus[index]['imageUrl'] as String),
                        ),
                      ),
                    ),
                    title: Text(viewedStatus[index]['name'] as String),
                    subtitle: Text(viewedStatus[index]['time'] as String,
                        style: TextStyle(
                            color: Color.fromRGBO(133, 149, 159, 1),
                            fontSize: 14)),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        direction: Axis.vertical,
        
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            backgroundColor: Color.fromRGBO(32, 44, 51, 1),
              child: const Icon(Icons.edit,size: 18,grade: -25,),
          ),
       FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff00a884),
        child: const Icon(Icons.photo_camera),
      ),
          
        ],
      )
    );
  }
}
