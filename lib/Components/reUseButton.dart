import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';


class ReUseButtonWithText extends StatefulWidget {
  final String label;
  final Function onTap;
  /// You Can 
  final bool isIndigo;

  ReUseButtonWithText({
     this.label,
     this.onTap,
    this.isIndigo
  });

  @override
  _ReUseButtonWithTextState createState() => _ReUseButtonWithTextState();
}

class _ReUseButtonWithTextState extends State<ReUseButtonWithText> {
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          CupertinoButton(
            borderRadius: BorderRadius.circular(30),
              color: widget.isIndigo != null && widget.isIndigo == true? TheColors.indigo : TheColors.yellowOrange,
              child: Text("          "+widget.label+"          ",style: 
              TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
               onPressed:widget.onTap),
        ],
      ),
    );
  }
}




class ReUseButtonWithTextAndArrow extends StatefulWidget {
  final String label;
  final Function onTap;
  /// You Can 
  final bool isIndigo;

  ReUseButtonWithTextAndArrow({
     this.label,
     this.onTap,
    this.isIndigo
  });

  @override
  _ReUseButtonWithTextAndArrowState createState() => _ReUseButtonWithTextAndArrowState();
}

class _ReUseButtonWithTextAndArrowState extends State<ReUseButtonWithTextAndArrow> {
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          CupertinoButton(
            borderRadius: BorderRadius.circular(30),
              color: widget.isIndigo != null && widget.isIndigo == true? TheColors.indigo : TheColors.yellowOrange,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("          "+widget.label+"          ",style: 
                  TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

                  Icon(Icons.chevron_right,color: Colors.white,)
                ],
              ),
               onPressed:widget.onTap),
        ],
      ),
    );
  }
}