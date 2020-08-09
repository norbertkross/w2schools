import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';

class AccountCreatedScreen extends StatefulWidget {
  /// A class that displays a welcome screen once a user account has been 
  /// successfully created.
  /// User must create and an account and if successful before can see this screen.
  @override
  _AccountCreatedScreenState createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Container(
          margin: EdgeInsets.only(top:120.0, left:10.0, right: 10.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  "You have successfully\nCreated your account",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold
                  ), 
                ),
              ),
              Container(
                width: 150,
                height: 200,
                child: Image(image: AssetImage('asset/Group 23.png'),)
                ),
                Container(
                  width: 150,
                  height: 200,
                  child:Image(image: AssetImage('asset/INH_47129_18887.png'))
                ),
                SizedBox(height: 15.0,),
                ReUseButtonWithText(label: "My Courses", onTap: (){})  
            ],
          ),
        ),
      ),
    );
  }
}