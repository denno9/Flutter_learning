import 'package:flutter/material.dart';
import 'package:myapp/provider/provider.dart';
class Details extends StatelessWidget{

 final Movies movies;

  Details(this.movies); 
@override
Widget build(BuildContext context){
  return  Scaffold(
    appBar: AppBar(
      title: Text("data")
    ),
    body: Column(
   
    ),
  );

  }

  
}