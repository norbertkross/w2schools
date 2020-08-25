import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WalkThroughState extends ChangeNotifier{


// Set The Value Of The Variable 
bool _hasWalkedThrough = false;  // this is a private variable 

// Get "_hasWalkedThrough" and make it Public
bool get hasWalkedThrough => _hasWalkedThrough;


// change _hasWalkedThrough 

  changeWalkThrough(){
  // Am re-assigning the "Local" value to true 
  //this would also reflect on "" hasWalkedThrough ""
  _hasWalkedThrough = true;

    //NOTE this is the equivalence of setState and should be called at the end 
    //of the function to rebuild your UI    
    notifyListeners();
  }

  
  // shared preference to check if user has passed walkthrough screen

  setPrefs(bool done) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('finishedWalkthrough', done);

  print("Has set bool :: "+ prefs.getBool('finishedWalkthrough').toString());
}

}