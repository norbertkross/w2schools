import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w2schools/Components/constants.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: KNotificationAppBarColor,
          title: Center(
            child: Text(
              'Notifications',
              style: kNotificationTitleStyle,
            ),
          ),
        ),
        body:
            //
            SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'New',
                    style: kNewTextStyle,
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the science course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/error.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              ' Registration Failed',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the Biology course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the Chemistry course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),

                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/error.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              ' Registration Failed',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(
                  flex: -1,
                  child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          width: 65,
                          height: 65,
                          image: AssetImage(
                            'assets/check.png',
                          ),
                        ),
                      ),
                      Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Text(
                              'You completed the physics course Successfully',
                              style: kMessageTextStyle,
                            ),
                          ),
                          Container(
//                      alignment:Alignment.bottomLeft ,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 210, 5),
                              child: Text(
                                '15hrs',
                                style: kMessageTimeTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ));
  }
}

//
//SizedBox(
//height: 5.0,
//width: 280,
//child: Divider(
//thickness: 1,
//color: Colors.black,
//),
//),

//Expanded(
////child:
//),Image(
//////image: AssetImage('assets/check.png'),
//////width: 80.0,
//////height: 80.0,
//////),
//Expanded(
//child: Column(
//children: <Widget>[
//Text('You completed the science course Successfully',
//style: kMessageTextStyle,
//),
//SizedBox(
//height: 10.0,
//),
//Text('15hrs',
//style: kMessageTimeTextStyle,
////                        textAlign: TextAlign.left,
//),
//],
//),
//),

//Row(
//children: <Widget>[
//Container(
//decoration: BoxDecoration(
//border: Border.all(
//color: notificationLineDividerColor, width: 2.0),
//),
//child: Row(
//children: <Widget>[
//Image(
//image: AssetImage('assets/check.png'),
//width: 80.0,
//height: 80.0,
//),
//Column(
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
//child: Text(
//'You completed the science course ',
//style: kMessageTextStyle,
//),
//),
//Text(
//'15hrs',
//style: kMessageTimeTextStyle,
//                        textAlign: TextAlign.left,
//),
//],
//),
//],
//),
//),
//],
//),
