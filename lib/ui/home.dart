import 'package:flutter/material.dart';
import 'package:industry_os/ui/flyIn.dart';
import 'package:industry_os/ui/setting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:industry_os/Start/Start.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;
  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new Start();
        }));
      }
    });
  }

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
    this.checkAuthentification();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NewDrawer(),
        appBar: new AppBar(
          title: new Text(
            'Industry OS',
            style: new TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Setting(),
                        ));
                  },
                  child: Icon(Icons.settings),
                )),
          ],
        ),
        body: Center(
          child: !isloggedin
              ? CircularProgressIndicator()
              : ListView(
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.all(20.0)),
                    new Center(
                      child: Text(
                        "Hello ${user.displayName} ",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(15.0)),
                    new Container(
                      child: Text(
                        "Here you can find all the graphs , informations ,insights and Data Tables",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
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
