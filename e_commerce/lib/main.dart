import 'package:flutter/material.dart';
// import  "package:e_commerce/pages/homePage.dart";
import 'package:e_commerce/pages/WhatsApp.dart';
import 'package:e_commerce/pages/inOutPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Flutter Demo',
      theme: new ThemeData(
        
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent
      ),
      home: WhatsApp()
    );
  }
}

