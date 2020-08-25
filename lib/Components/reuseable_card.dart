import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:w2schools/Components/constants.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour ,this.cardChild ,this.onPress});

  final Function onPress;
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
//        height: 300,
        margin: EdgeInsets.fromLTRB(16, 10, 16, 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),  
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border:Border.all(color: colour,width: 2.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
        ),
//                  height: 200.0,
//                  width: 170.0,
      ),
    );
  }
}
