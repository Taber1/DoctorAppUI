import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oladoc/Proflle/myprofile.dart';
import 'package:oladoc/location.dart';
import 'package:oladoc/search.dart';
import 'dart:math';
import 'package:percent_indicator/percent_indicator.dart';
import 'Proflle/myprofiles.dart';

class BookApp extends StatefulWidget {
  @override
  _BookAppState createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(170.0),
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                AppBar(
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  title: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'DOC ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'FIST',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  leading: Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Positioned(
                          bottom: 6,
                          right: 1,
                          child: CircleAvatar(
                              child: IconButton(
                            icon: Icon(FontAwesomeIcons.user),
                            color: Colors.indigo,
                            onPressed: () {
                              _scaffoldKey.currentState.openDrawer();
                            },
                          )),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                              radius: 8,
                              child: Icon(
                                Icons.menu,
                                size: 10,
                              )),
                        ),
                      ]),
                  backgroundColor: Colors.blueAccent,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => location()));
                                },
                                child: Icon(Icons.add_location)),
                            SizedBox(width: 0),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => location()));
                                },
                                child: Text("Karachi")),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => location()));
                                },
                                child: Icon(Icons.arrow_drop_down))
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => search()));
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[300]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText:
                                  'Doctors, Hospitals, Specialist, Services, Dispenceries',
                            ))
                      ]),
                )
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Card(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent[100],
                      borderRadius: BorderRadius.circular(10)),
                  height: 100,
                  child: InkWell(onTap: () {}),
                )),
                SizedBox(height: 7),
                Card(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent[100]),
                    child: InkWell(onTap: () {}),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(name: "Gynecologist", icon: FontAwesomeIcons.female),
                    acard(name: "Skin Specialist", icon: Icons.face),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(
                        name: "Child Specialist", icon: FontAwesomeIcons.child),
                    acard(name: "Neurologist", icon: FontAwesomeIcons.brain),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(
                        name: "Orthopedic Surgeon",
                        icon: FontAwesomeIcons.bone),
                    acard(
                        name: 'Gastroenterologist', icon: FontAwesomeIcons.fire)
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(
                        name: "Endocrinologist",
                        icon: FontAwesomeIcons.hospital),
                    acard(name: "ENT Specialist", icon: FontAwesomeIcons.eye),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(
                        name: "General Surgeon",
                        icon: FontAwesomeIcons.hospital),
                    acard(
                        name: "Heart Specialist", icon: FontAwesomeIcons.heart),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(
                        name: "Lungs Specialist", icon: FontAwesomeIcons.lungs),
                    acard(name: "Eye Specialist", icon: FontAwesomeIcons.eye),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(name: "Psychiatrist", icon: FontAwesomeIcons.brain),
                    acard(name: "Urologist", icon: FontAwesomeIcons.male),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(name: "Dentist", icon: FontAwesomeIcons.teeth),
                    acard(
                        name: "Kidney Specialist",
                        icon: FontAwesomeIcons.hospital),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(
                        name: "Diabetes Specialist",
                        icon: FontAwesomeIcons.hospital),
                    acard(
                        name: "Pain Management",
                        icon: FontAwesomeIcons.hospital),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    acard(name: "Psychologist", icon: FontAwesomeIcons.brain),
                    acard(name: "Oncologist", icon: FontAwesomeIcons.hospital),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: OutlineButton(
                      onPressed: () {},
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      child: Text(
                        "Looking For more? Search",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      )),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            )),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              //  CurrentScreen = search();
              //     currentTab = 5;
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.call,
                size: 32,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text("HELPLINE",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
          backgroundColor: Colors.amber[600],
        ),
      ),
      drawer: drawer(),
    );
  }
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[900]),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "No name provided yet",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "0333-3333333",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: LinearPercentIndicator(
                      width: 140.0,
                      lineHeight: 14.0,
                      percent: 0.5,
                      center: Text(
                        "50.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      trailing: Text("50%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.white,
                      progressColor: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlineButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => myProfile()));
                      },
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      child: Text(
                        "Complete your profile",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(    
              'My Profiles',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 30,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => myProfiles()));
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'My Doctor',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'Insurance',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 0.3,
          ),
        ],
      ),
    );
  }
}

class acard extends StatelessWidget {
  String name;
  IconData icon;
  acard({this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: GestureDetector(
          //onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>nutrition())),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.40,
            height: MediaQuery.of(context).size.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    icon,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                SizedBox(width: 10),
                Text(name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ));
  }
}
