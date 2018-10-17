import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " ECommerece",
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(),
      body: Container(
        child: GridView.count(crossAxisCount: 2, children: <Widget>[
          Card(
            child:InkWell(
              onTap:(){}
            )
          )
        ]),
      ),
    );
  }
}
