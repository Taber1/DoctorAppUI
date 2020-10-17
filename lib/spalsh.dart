import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oladoc/BookAppointment.dart';
import 'package:oladoc/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return home();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Doc",
                      style: TextStyle(
                          letterSpacing: 4.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 60.0,
                          color: Colors.yellow[900],
                          decoration: TextDecoration.none)),
                  Text("Flist",
                      style: TextStyle(
                          letterSpacing: 4.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 60.0,
                          color: Colors.blue[900],
                          decoration: TextDecoration.none)),
                ]),
          ),
          SizedBox(height: 40.0),
          Center(
              child: Container(
                  height: 50,
                  width: 50,
                  child: Image.network(
                      "https://acegif.com/wp-content/uploads/loading-22.gif")))
        ],
      ),
    );
  }
}
