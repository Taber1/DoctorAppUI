import 'package:flutter/material.dart';

class medRecord extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Medical Records",
              style: TextStyle(color: Colors.white, fontSize: 22))),
    );
  }
}
