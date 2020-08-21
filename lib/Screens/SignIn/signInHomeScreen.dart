import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'package:w2schools/Components/zigzagClipper.dart';

class SignInHomeScreen extends StatefulWidget {
  /// This class presents the user with a sign in option
  /// or register option
  @override
  _SignInHomeScreenState createState() => _SignInHomeScreenState();
}

class _SignInHomeScreenState extends State<SignInHomeScreen> {
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
                      image: AssetImage('asset/Story.png'), fit: BoxFit.fill),
                )
                // child: Image(image: AssetImage('asset/Story.png')),
                // child: ClipPath(
                //   clipper: CustomRect(),
                //   child: Image(image: AssetImage('asset/Story.png'),) ,
                // ),
                ),
          ),
          SizedBox(height: 30.0),
          Center(
              child: Column(
            children: <Widget>[
              Text(
                "Please Sign In or Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              ReUseButtonWithText(label: "Register", onTap: () {}),
              SizedBox(height: 20.0),
              ReUseButtonWithText(label: "Sign In", onTap: () {})
            ],
          ))
        ],
      ),
    );
  }
}
