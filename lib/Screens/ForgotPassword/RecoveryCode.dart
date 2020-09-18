import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';

class RecoveryCode extends StatefulWidget {
  // Declare a field that holds the Todo.
  final String sentMode;

  // In the constructor, the selection mode for recovery code.
  RecoveryCode({Key key, @required this.sentMode}) : super(key: key);
  @override
  _RecoveryCodeState createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // receive the sent mode
    String _receivedMode = widget.sentMode;

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
                "Enter 4-digit\nRecovery code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 25, bottom: 30, right: 20),
              child: Text(
                "The recovery code was sent to your $_receivedMode. Please Enter code:",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomBoxShadow(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    CustomBoxShadow(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    CustomBoxShadow(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    CustomBoxShadow(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    CustomBoxShadow(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                print("verifying recovery code...");
              },
              child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 60,
                  decoration: BoxDecoration(
                      color: TheColors.yellowOrange,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Submit",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: screenWidth / 4),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  )),
            ),
            SizedBox(height: screenHeight / 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Didn't receive code?",
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    print("Sending code again...");
                  },
                  child: Text(
                    "Send again",
                    style: TextStyle(
                      color: TheColors.yellowOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// Creates custom shadow box
/// Must have an ancestor [child] widget.
class CustomBoxShadow extends StatelessWidget {
  final Widget child;
  CustomBoxShadow({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
