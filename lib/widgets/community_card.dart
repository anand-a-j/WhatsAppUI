import 'package:flutter/material.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            tileColor: const Color.fromRGBO(17, 27, 33, 1),
            titleTextStyle: TextStyle(color: Colors.white,fontSize: 16),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL2CfaftwRl3tFFT42mkQLvPm-wYTDUfFIlg&usqp=CAU'),
            ),
            title: Text("Flutter Main Group"),
          ),

          ListTile(
            tileColor: const Color.fromRGBO(17, 27, 33, 1),
            titleTextStyle: TextStyle(color: Colors.white),
            subtitleTextStyle:
                const TextStyle(color: Color.fromRGBO(133, 149, 159, 1)),
            leading: CircleAvatar(
                backgroundColor: Color(0xff046a62),
                child: Icon(
                  Icons.campaign,
                  color: Color(0xff43c7b9),
                )),
            title: Text("Announcements"),
            subtitle: Text("admin: Hello everyone how you all doing,Hope you are all doing fine",overflow: TextOverflow.ellipsis,style: TextStyle(color: Color.fromRGBO(133, 149, 159, 1)),),
            trailing: Text(
              "11/07/2023",
              style: const TextStyle(
                color: Color.fromRGBO(133, 149, 159, 1),
              ),
            ),
          ),
          ListTile(
            tileColor: const Color.fromRGBO(17, 27, 33, 1),
            titleTextStyle: TextStyle(color: Colors.white),
            subtitleTextStyle: TextStyle(color: Color.fromRGBO(133, 149, 159, 1)),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgDlmV5bV9sLZJJg3Sv1bJ9pO9HsmtD_3MAw&usqp=CAU'),
            ),
            title: Text("Flutter Community Group"),
            subtitle: Text("~ Chandler Bing: Hello Everyone!",
              style: TextStyle(color: Color.fromRGBO(133, 149, 159, 1)),
            ),
            trailing: Text("Yesterday",style: TextStyle(color:Color.fromRGBO(133, 149, 159, 1)),),
          ),
          ListTile(
            tileColor: const Color.fromRGBO(17, 27, 33, 1),
            leading: Icon(Icons.chevron_right,color: Color.fromRGBO(133, 149, 159, 1),),
            title: Text(
              "View all",
              style: const TextStyle(
                color: Color.fromRGBO(133, 149, 159, 1),
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 8,
            color: Color(0xff0b141b),
          ),
        ],
      ),
    );
  }
}
