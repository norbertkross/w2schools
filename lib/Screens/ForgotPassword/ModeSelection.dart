import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';
import 'package:w2schools/Screens/ForgotPassword/RecoveryCode.dart';

class ModeSelection extends StatefulWidget {
  @override
  _ModeSelectionState createState() => _ModeSelectionState();
}

class _ModeSelectionState extends State<ModeSelection> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: TheColors.yellowOrange,
        title: Text(
          "Back",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 25),
              child: Text(
                "Forgot\nPassword?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 25, bottom: 30, right: 20),
              child: Text(
                "Select which contact details we should use to reset your password",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            GestureDetector(
              onTap: () {
                // pass sent mode to recovery screen
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => RecoveryCode(sentMode: "mobile number")));
                print("via sms");
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                padding: EdgeInsets.all(25),
                width: screenWidth - 50,
                height: 150,
                decoration: BoxDecoration(
                  color: TheColors.yellowOrange,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.call,
                        size: 40,
                        color: TheColors.yellowOrange,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Via SMS",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "**** *** 609",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // pass sent mode to recovery screen
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => RecoveryCode(sentMode: "email address")));
                print("via email");
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                padding: EdgeInsets.all(25),
                width: screenWidth - 50,
                height: 150,
                decoration: BoxDecoration(
                  color: TheColors.yellowOrange,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.email,
                        size: 40,
                        color: TheColors.yellowOrange,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Via Email",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "****@gmail.com",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
