import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/chatitems.dart';
import 'chat_screen.dart';

class Room extends StatefulWidget {
  static String id = "room";

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'المحادثات',
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.blue,
              ),
            )),
        body: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('message')
                    .orderBy('timeDate')
                    .snapshots(),
                builder: (context, snapshot) {
                  // if (!snapshot.hasData) {
                  //   return Center(
                  //     child: CircularProgressIndicator(),
                  //   );
                  // }
                  return Column(children: [
                    ChatItem(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen(index: '1',Namechat:"Chat Cat" ,)));
                      },
                      name_chat: "Chat Cat",
                    ),
                    ChatItem(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen(index: '2',Namechat: "Chat Frinds",)));
                      },
                      name_chat: "Chat Frinds",
                    )
                  ]);
                }
                // return Expanded(
                //     child: ListView(
                //       padding: const EdgeInsets.all(20),
                //       children: messageWidgets,
                //     ));
                ),
          ],
        ));
  }
}
