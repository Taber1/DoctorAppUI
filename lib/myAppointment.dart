import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Appointmets",
              style: TextStyle(color: Colors.white, fontSize: 22))),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70),
            Stack(
              alignment: Alignment.bottomRight,
              overflow: Overflow.visible,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.calendarAlt,
                  size: 100,
                ),
                Positioned(
                    bottom: -15,
                    right: -10,
                    child: Icon(FontAwesomeIcons.ban,
                        size: 30, color: Colors.red)),
              ],
            ),
            SizedBox(height: 20),
            Center(
                child: Text("You have no upcoming appointments",
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]))),
          ]),
    );
  }
}
