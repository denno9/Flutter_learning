import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " ECommerce",
      theme: ThemeData(),
      home:ECommerce()
    );
  }
}


class ECommerce extends StatefulWidget{
  @override
  ECommerceState createState() {
    return new ECommerceState();
  }
}

class ECommerceState extends State<ECommerce> {
  @override
  Widget build(BuildContext context){
    return Material(
     child: Scaffold(
       appBar: AppBar(
         title: Text("ECommerce")
       ),
       drawer: Drawer(),
       body: Container(
         child: Column(
           children:<Widget>[
             
           ]
         )
       ),
     ),
    );
  }
}