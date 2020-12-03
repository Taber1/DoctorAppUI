import 'package:flutter/material.dart';
import 'package:oladoc/bookAppointment.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oladoc/medicalrecord.dart';
import 'package:oladoc/myAppointment.dart';

void main() => runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentTab = 0;
  final List<Widget> screen = [
    BookApp(),
    MyAppointment(),
    medRecord(),
  ];

  Widget CurrentScreen = BookApp();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 0.0, right: 0.0),
        child: PageStorage(bucket: bucket, child: CurrentScreen),
      ),
      bottomNavigationBar: SingleChildScrollView(
        child: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 35,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = BookApp();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.stethoscope,
                                size: 20,
                                color: currentTab == 0
                                    ? Colors.blueAccent
                                    : Colors.grey),
                            SizedBox(height: 5),
                            Text("Book Appointment",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: currentTab == 0
                                        ? Colors.blueAccent
                                        : Colors.grey))
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = MyAppointment();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.calendarAlt,
                                size: 20,
                                color: currentTab == 1
                                    ? Colors.blueAccent
                                    : Colors.grey),
                            SizedBox(height: 5),
                            Text("My Appointments",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: currentTab == 1
                                        ? Colors.blueAccent
                                        : Colors.grey))
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = medRecord();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.fileMedical,
                                size: 20,
                                color: currentTab == 2
                                    ? Colors.blueAccent
                                    : Colors.grey),
                            SizedBox(height: 5),
                            Text("Medical Records",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: currentTab == 2
                                        ? Colors.blueAccent
                                        : Colors.grey))
                          ],
                        ),
                      ),
                    ])),
          ),
        ),
      ),
    );
  }
}
