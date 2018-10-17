import 'package:flutter/material.dart';

class InOutPage extends StatefulWidget {
  @override
  InOutPageState createState() {
    return new InOutPageState();
  }
}

class InOutPageState extends State<InOutPage> {
  final _formKey = GlobalKey<FormState>();
  final txtController = TextEditingController();
  String label = "Login2";
 int _currentNav=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentNav ,
        iconSize: 30.0,
        onTap: (index){
         setState(() {
                     _currentNav=index;
                  });
        },
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home)
          ),
           BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search)
          ),
           BottomNavigationBarItem(
            title: Text("Setting"),
            icon: Icon(Icons.settings)
          ),
           BottomNavigationBarItem(
            title: Text("Notification"),
            icon: Icon(Icons.notifications)
          )
        ]
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.asset("assets/diamond.png"),
              SizedBox(height: 16.0),
              Text(
                "Dead",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              )
            ],
          ),
          Form(
              key: _formKey,
              child: Column(children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Fill the name";
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email ",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0)),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "password needed";
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0)),
                  obscureText: true,
                  onSaved: (value) {
                    setState(() {
                      label = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      RaisedButton(
                          color: Colors.blueGrey,
                          elevation: 0.0,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // print(_formKey.currentContext.toString());
                            }
                          },
                          child: Text(
                            "label",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          )),
                    ])
              ]))
        ],
      )),
    );
  }
}
