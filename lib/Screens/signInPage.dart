import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Components/TheColors.dart';
import 'HomeScreen.dart';

// const TheColors.yellowOrange = const Color(0xFFF5A623);
const KScaffoldColor = const Color(0xFFF2F2F2);
const KTextFieldColor = const Color(0xFFFFFFFF);
const KIconColor = const Color(0xFF8E8E8E);
const kCursorColor = const Color(0xFF8D8D8D);

//F7F9FA
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

// ignore: camel_case_types
class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        backgroundColor: KScaffoldColor,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.chevron_left,color: Colors.white,size: 35,),
          onPressed: (){Navigator.pop(context);},),
          backgroundColor: TheColors.yellowOrange,
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Icon(
              //   Icons.navigate_before,
              //   color: Colors.white,
              //   size: 30,
              // ),
              // Container(
              //   padding: EdgeInsets.all(0.0),
              //   child: Text(
              //     'Back',
              //     style: TextStyle(
              //       fontSize: 20.0,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ],
          ),


        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 150.0, left: 12.0, right: 12.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Sign In:',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 55.0, bottom: 40.0),
                    child: TextField(
                      cursorColor: kCursorColor,
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: KTextFieldColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(90),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: TheColors.yellowOrange,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(90),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: TheColors.yellowOrange,
                          ),
                        ),
                        hintText: 'Enter full name',
//                    labelText: 'Enter full name',
                        prefixIcon: const Icon(
                          Icons.perm_identity,
                          color: KIconColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 65.0),
                    child: TextField(
                      cursorColor: kCursorColor,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: KTextFieldColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(90),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: TheColors.yellowOrange,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(90),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: TheColors.yellowOrange,
                          ),
                        ),
                        hintText: 'Enter Password',
//                    labelText: 'Enter password',
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: KIconColor,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                          print("Navigate to gome ...");
                          navigateTOhomepage();},                      
                    child: Container(
                      height: 60.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(75.0),
                        shadowColor: Colors.greenAccent,
                        color: TheColors.yellowOrange,
                        elevation: 3.0,
                        child:  Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height:60)
                ],
              ),
            ),
          ],
        ));
  }


  

  
  // Navigate to HomePage after Sign In
  void navigateTOhomepage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen()));
  }
}
