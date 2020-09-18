import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';

class PasswordResetScreen extends StatefulWidget {
  @override
  _PasswordResetScreenState createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TheColors.yellowOrange,
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80),
            Expanded(
              child: Center(
                child: Ink.image(
                  image: AssetImage('assets/check.png'),
//              alignment: Alignment.topCenter,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  ' Password Reset Successful',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
//              margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
              padding: EdgeInsets.fromLTRB(15, 20, 15, 90),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(85.0),
                      shadowColor: Colors.greenAccent,
                      color: TheColors.yellowOrange,
                      elevation: 3.0,
                      child: Center(
                        child: Text(
                          'Sign In   >',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 27),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
