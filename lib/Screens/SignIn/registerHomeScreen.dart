import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';


import 'package:w2schools/Components/zigzagClipper.dart';

import '../TestButton/CreateAccount/createAccount.dart';

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
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
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
                //height: MediaQuery.of(context).size.height * 0.40,
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
                    ReUseButtonWithText(label: "Teacher", onTap: () {goTOregisteratonForm();}),
                    SizedBox(height: 15.0),
                    ReUseButtonWithText(label: "Student", onTap: () {goTOregisteratonForm();}),
                    ButtonTheme(
                      minWidth: 100,
                      child: FlatButton(
                          splashColor: Colors.white,
                          onPressed: () {Navigator.of(context).pop();},
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
        ],
      ),
    );
  }

  void goTOregisteratonForm(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CreateAccountScreen()));
  }
}

