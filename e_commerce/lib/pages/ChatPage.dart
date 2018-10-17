import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  ChatPageState createState() {
    return new ChatPageState();
  }
}

class ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, ndex) {
        Column(children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text("hellow"),
            subtitle: Text("loong time no see"),
          )
        ]);
      },
    );
  }
}
