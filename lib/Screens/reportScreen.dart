import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';
import 'package:w2schools/Components/reUseButton.dart';

class ReportHomeScreen extends StatefulWidget {
  @override
  _ReportHomeScreenState createState() => _ReportHomeScreenState();
}

class _ReportHomeScreenState extends State<ReportHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, right: 15.0),
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: BoxDecoration(
              color: TheColors.yellowOrange,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Back",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        )),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text("Report",
                          style: TextStyle(
                              fontSize: 45.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(2.00, 2.00),
                                  blurRadius: 3.0
                                )
                              ])),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 40.0, right: 15.0, left: 15.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/adinkra_pattern-8.png',
                    ),
                    fit: BoxFit.fill),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Please type the issue: ",
                    style: TextStyle(
                        color: TheColors.yellowOrange, fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                          hintText: "issue...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: ReUseButtonWithTextAndArrow(
                      label: "Report",
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0)),
                                elevation: 0.0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 85,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  padding:
                                      EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: Image(
                                          image: AssetImage('asset/Group 23.png'),
                                          height: 65.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        "Your issue has been",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26.0),
                                      ),
                                      Text(
                                        "Submitted successfully",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26.0),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text("An agent will contact you soon",
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
