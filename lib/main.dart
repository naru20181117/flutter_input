// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.orangeAccent[200],
        scaffoldBackgroundColor: Colors.orangeAccent[180],
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('入力フォーム', style: TextStyle(color: Colors.orange[800])),
        centerTitle: true,
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.only(left: 30.0, right: 20.0),
          child: Column(children: <Widget>[
            Container(
              child: Row(children: <Widget>[
                Expanded(
                    child: TextFormField(
                  style: TextStyle(color: Colors.cyan[900]),
                  maxLength: 20,
                  maxLengthEnforced: true,
                  obscureText: false,
                  // autovalidate: false,
                  decoration: InputDecoration(
                      hintText: 'キーワードを入力してください',
                      labelText: 'キーワードから探す',
                      labelStyle: TextStyle(color: Colors.orange),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.brown),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.brown),
                      )),
                )),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 40.0,
                  ),
                )
              ]),
            ),
            Container(),
            Container(),
            Container(),
          ]),
        ),
      ),
    );
  }
}
