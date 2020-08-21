import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'dart:math';

import 'package:w2schools/Components/zigzagClipper.dart';

class RegisterHomeScreen extends StatefulWidget {
  /// A class that presents a new user to register as a student or a teacher
  /// must be navigated from the signInHomeScreen screen
  @override
  _RegisterHomeScreenState createState() => _RegisterHomeScreenState();
}

class _RegisterHomeScreenState extends State<RegisterHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: SimpleClipper(),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/Story-1.png'), fit: BoxFit.fill),
                )),
          ),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.only(top:20.0),
            height: MediaQuery.of(context).size.height * 0.40,
            child: Center(
                child: Column(
              children: <Widget>[
                Text(
                  "Register as:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ReUseButtonWithText(label: "Teacher", onTap: () {}),
                SizedBox(height: 15.0),
                ReUseButtonWithText(label: "Student", onTap: () {}),
                ButtonTheme(
                  minWidth: 100,
                  child: FlatButton(
                      splashColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 18.0),
                      )),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}

