import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';

class SignInTextField extends StatelessWidget {
  /// A class that returns a textformfield widget
  /// it accepts a an icon widget,text, keyboardinput type  as an argument
  /// the icon widget would be used as the  icon
  /// the text would be used as the label text



  final Icon iconName;
  final String labelText;
  final TextInputType textInputType;

  SignInTextField({@required this.iconName,@required this.labelText,@required this.textInputType});
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: iconName,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: TheColors.yellowOrange
              )
            )
        ),
        keyboardType: textInputType,
      );
  }
}