import 'package:flutter/material.dart';
//import 'package:w2schools/Components/constants.dart';

class ReuseableCardChild extends StatelessWidget {
  ReuseableCardChild({@required this.digitColour, this.digit, this.text,this.onPress,this.digitTextColour});

  final int digit;
  final String text;
  final Color digitColour;
  final Color digitTextColour;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(digit.toString(),
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w500,
                color: digitColour,
              )
//     style: kDigitStyle,
              ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: digitTextColour,
            ),
//          style:kDigitTextStyle,
          )
        ],
      ),
    );
  }
}
