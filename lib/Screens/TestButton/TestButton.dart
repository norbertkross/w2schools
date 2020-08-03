import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';





class TestButton extends StatefulWidget {


  @override
  _TestButtonState createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {

  @override
  Widget build(BuildContext context) {        
    
    return Scaffold(
      appBar: AppBar(
        
        
        title: Text("Check Button"),
      ),
      body: Center(
        
        
        child: ReUseButtonWithTextAndArrow(
          isIndigo: true,
          label: "Hello",
          onTap: (){
            print("Tapped");
          },
        ),
      ),
    );
  }
}
