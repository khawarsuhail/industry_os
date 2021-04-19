import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:industry_os/ui/InternalAuditReports.dart';
import 'package:industry_os/ui/dailyLogs.dart';
import 'package:industry_os/ui/mis.dart';
import 'package:industry_os/ui/report.dart';
import 'package:industry_os/ui/safetyMeetingLogggers.dart';

class NewDrawer extends StatefulWidget {
  @override
  _NewDrawerState createState() => _NewDrawerState();
}

class _NewDrawerState extends State<NewDrawer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isloggedin = false;
  User user;
  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: !isloggedin
          ? new Center(
              child: new Text(
              'Login/Sign-up/Register for Further Updates',
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ))
          : ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'Industry OS',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/industry.jpg'),
                      )),
                ),
                ListTile(
                  leading: Icon(Icons.bar_chart),
                  title: Text('MIS'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MIS(),
                        ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('Report'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Report(),
                        ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.border_color),
                  title: Text('Daily Logs'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DailyLogs(),
                        ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.border_color),
                  title: Text('Safety Meeting Logers'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SafetyMeetingLoggers(),
                        ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Internal Audit Report'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InternalAuditReports(),
                        ));
                  },
                ),
              ],
            ),
    );
  }
}
