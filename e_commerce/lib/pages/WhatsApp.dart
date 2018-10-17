import 'package:flutter/material.dart';
import 'package:e_commerce/pages/ChatPage.dart';
import 'package:e_commerce/pages/inOutPage.dart';

class WhatsApp extends StatefulWidget {
  @override
  WhatsAppState createState() {
    return new WhatsAppState();
  }
}

class WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, initiaIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.7,
          title: Text("WhatsApp"),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(text: "Status"),
              Tab(
                icon: Icon(Icons.call),
                child: Text('Calls'),
              ),
              Tab(
                icon: Icon(Icons.photo_camera),
                child: Text("Camera"),
              ),
              Tab(icon: Icon(Icons.chat_bubble), child: Text("Chat"))
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat_bubble_outline),
          onPressed: () {},
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[ChatPage(),InOutPage(), ChatPage(), ChatPage()],
        ));
  }
}
