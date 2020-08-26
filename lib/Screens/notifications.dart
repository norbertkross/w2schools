import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';
import 'package:w2schools/Components/constants.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

List _notificationsList = [
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"1hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"5hrs",
  },
  {
   "icon" :'assets/error.png',
   "message":'You completed the science course Successfully',
   "time":"13hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"15hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"7hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"15hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"13hrs",
  },
  {
   "icon" :'assets/error.png',
   "message":'You completed the science course Successfully',
   "time":"15hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"1hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"15hrs",
  },
  {
   "icon" :'assets/check.png',
   "message":'You completed the science course Successfully',
   "time":"15hrs",
  },

];

  @override
  Widget build(BuildContext context) {
    return Column(
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

                for(int i = 0;i <= _notificationsList.length-1; i++)
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Column(
                          children: [
                            ListTile(
                              leading: Image(
                                  width: 65,
                                  height: 65,
                                  image: AssetImage(
                                    _notificationsList[i]["icon"],
                                  ),
                                ),
                              title: Text(
                                      _notificationsList[i]["message"],
                                      style: kMessageTextStyle,
                                    ),
                              subtitle: Text(
                                        _notificationsList[i]["time"],
                                        style: kMessageTimeTextStyle,
                                        textAlign: TextAlign.left,
                                      ),
                            ),
                       SizedBox(height: 5,) ,
                       Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.black.withOpacity(.5),
                        ),

                          ],
                        ),
                 ),
                    ],
                  );
  }
}
