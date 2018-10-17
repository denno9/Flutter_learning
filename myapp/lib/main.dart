import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:myapp/details.dart';
import 'package:myapp/provider/provider.dart';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    title: "MobMovie",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final url = "https://yts.am/api/v2/list_movies.json";
  Provider provider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }

  getList() async {
    var res = await http.get(url);
    print(res);
    var decoded = jsonDecode(res.body);
    provider = Provider.fromJson(decoded);
    print(provider.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.cyan,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_balance),
              onPressed: () {
                // ...
              },
            )
          ],
        ),
        drawer: Drawer(
          child: DrawerHeader(
            child: null,
          ),
        ),
        body: provider == null
            ? Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                ),
              )
            : GridView.count(
                crossAxisCount: 2,
                children: provider.data.movies
                    .map(
                      (m) => Padding(
                          padding: EdgeInsets.all(2.0),
                          child: InkWell(
                            onTap: () {
                              //  Navigator.push(context, MaterialPageRoute(
                              //    builder:(context)=> Details(m)
                              //  ));
                            },
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      height: 100.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit:BoxFit.cover,
                                              image: NetworkImage(
                                                  m.mediumCoverImage))))
                                ],
                              ),
                            ),
                          )),
                    )
                    .toList()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
          backgroundColor: Colors.cyanAccent,
        ));
  }
}
