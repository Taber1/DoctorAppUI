import 'package:flutter/material.dart';

class myProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Name",
              style: TextStyle(color: Colors.grey[400]),
            ),
            SizedBox(height: 5),
            TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]),
                    ),
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(color: Colors.grey[400]))),
            SizedBox(height: 20),
            Text(
              "Email",
              style: TextStyle(color: Colors.grey[400]),
            ),
            SizedBox(height: 5),
            TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]),
                    ),
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.grey[400]))),
            SizedBox(height: 20),
            Text(
              "Age in years",
              style: TextStyle(color: Colors.grey[400]),
            ),
            SizedBox(height: 5),
            TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]),
                    ),
                    hintText: 'Age',
                    hintStyle: TextStyle(color: Colors.grey[400]))),
            SizedBox(height: 20),
            Text(
              "Gender",
              style: TextStyle(color: Colors.grey[400]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: RaisedButton(
        onPressed: () {},
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Fixed Button'),
      ),
    );
  }
}
