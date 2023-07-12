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
              backgroundColor: Color(0xff00a884),
            ),
            title: Text('Create call link',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
            subtitle: Text('Share a link for your WhatsApp call',
                style: TextStyle(color: Color.fromRGBO(133, 149, 159, 1)),),
          ),
          const SizedBox(height: 5,),
         const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Recent',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                    )
                    ,
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
                        title: Text(calls[index]['name'] as String,style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                textBaseline: TextBaseline.alphabetic
                ),),
                        subtitle: Row(
                          children: [
                            calls[index]['incoming'] == true
                                ? const Icon(
                                    Icons.call_received,
                                    color: Colors.red,
                                    size: 14,
                                  weight: 100,
                                  grade: -25,
                                    
                                  )
                                : const Icon(
                                    Icons.call_made,
                                    color: Colors.green,
                                    size: 14,
                                  weight: 100,
                                  grade: -25,
                                    
                                  ),
                            Text(calls[index]['time'] as String,
                              style: const TextStyle(
                                  color: Color.fromRGBO(133, 149, 159, 1),
                                  fontSize: 14))
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: index.isEven
                              ? Icon(Icons.call,
                                size: 20,
                                weight: 100,
                                grade: -25,
                                color: const Color(0xff00a884)
                              )
                              : Icon(Icons.videocam,
                                size: 20,
                                weight: 100,
                                grade: -25,
                                color: const Color(0xff00a884)
                              ),
                        ),
                        );
                  },
                  ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff00a884),
        child: const Icon(Icons.add_ic_call),
      ),
    );
  }
}
