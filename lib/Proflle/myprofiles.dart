import 'package:flutter/material.dart';

class myProfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("My Profile"),
            Text(
              "Add new profile",
              style: TextStyle(fontSize: 13),
            )
          ],
        )),
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 20, top: 20),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
            ),
            title: Text("No name provided yet"),
            subtitle: Text("Self"),
            onTap: () {},
          ),
        ));
  }
}
