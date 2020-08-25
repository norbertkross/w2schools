import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final String imagePath, subject;

  SubjectCard(this.imagePath, this.subject);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              // image: DecorationImage(image: AssetImage(imagePath)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 60,
            width: 60,
            child: Image.asset(imagePath),
          ),
          Text(
            subject,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      );
}
