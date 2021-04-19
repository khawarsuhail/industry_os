import 'package:flutter/material.dart';

class SafetyMeetingLoggers extends StatefulWidget {
  @override
  _SafetyMeetingLoggersState createState() => _SafetyMeetingLoggersState();
}

class _SafetyMeetingLoggersState extends State<SafetyMeetingLoggers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Safety Meeting Loggers',
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
            new Container(
              //height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field1',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field2',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field3',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field4',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field5',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field6',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field7',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field8',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field9',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field10',
                        icon: new Icon(Icons.verified_user)),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Field11',
                        icon: new Icon(Icons.verified_user)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
