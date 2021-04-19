import 'package:flutter/material.dart';

class MIS extends StatefulWidget {
  @override
  _MISState createState() => _MISState();
}

class _MISState extends State<MIS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(
            'MIS',
            style: new TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: new Container(
          alignment: Alignment.topCenter,
          child: new ListView(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(20.0)),
              new Center(
                child: new Text('DASHBOARD',
                    style: new TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              new Image.asset(
                'images/chart1.png',
                width: 180.0,
                height: 340.0,
              ),
              new Image.asset(
                'images/Dashboard.jpg',
                width: 180.0,
                height: 340.0,
              ),
            ],
          ),
        ));
  }
}
