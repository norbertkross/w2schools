import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'package:w2schools/Components/signinInputField.dart';
import 'package:w2schools/Screens/TestButton/CreateAccount/accountCreated.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back",style: TextStyle(color: Colors.white),),
        leading: IconButton(icon: 
        Icon(Icons.chevron_left,color: Colors.white,),
         onPressed: (){Navigator.pop(context);}),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top:0.0, left:10.0, right:10.0),
          padding: EdgeInsets.only(left: 15.0, right: 15.0,),
          child: ListView(
            shrinkWrap: true,
            children: [
Column(
            children: <Widget>[
              Center(
                child:Text(
                  "Create Your Account:",
                  style: TextStyle(
                   fontSize: 26.0,
                   fontWeight: FontWeight.bold 
                  ),)
              ),
              SizedBox(height: 40.0,),
              SignInTextField(
                iconName:Icon(Icons.person_outline),
                labelText:"Enter Full name",
                textInputType:TextInputType.text
              ),
              SizedBox(height: 15.0),
              SignInTextField(
                iconName:Icon(Icons.phone),
                labelText:"Phone number",
                textInputType:TextInputType.number
              ),
              SizedBox(height: 15.0,),
              SignInTextField(
                iconName:Icon(Icons.school),
                labelText:"School",
                textInputType:TextInputType.text
              ),
              SizedBox(height:15.0),
              SignInTextField(
                iconName:Icon(Icons.lock_open),
                labelText:"Password",
                textInputType:TextInputType.visiblePassword
              ),
              SizedBox(height:35.0),
              ReUseButtonWithText(label: "Register", onTap: () {
                navigateToOnSuccessfulAccountCreatedScreen();
              })
            ],
          ),              
            ],
          ),
        ),
      ),
    );
  }

  // for navigation to the account created screen when 
  // the account creation is successful
  void navigateToOnSuccessfulAccountCreatedScreen() {
    Navigator.push(
      context, MaterialPageRoute(builder: (BuildContext context) => AccountCreatedScreen()));
  }
}