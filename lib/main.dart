import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab View'),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.blue,
                  indicatorColor: Colors.red,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                    fontSize: 20.0,
                  ),
                  tabs: <Widget>[
                    Tab(text: "Home"),
                    Tab(text: "Orders"),
                    Tab(text: "Login"),
                  ],
                ),
              ),
              Expanded(
                //Widget yang mirip seperti Row dan Column, tapi widget children-nya saling berjauhan mengisi ruang kosong
                child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        child: Screen1(),
                      ),
                      Container(
                        child: Screen2(),
                      ),
                      Container(
                        child: Screen3(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
