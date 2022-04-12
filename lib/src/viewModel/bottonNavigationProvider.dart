
import 'package:church_project/src/view/activity.dart';
import 'package:church_project/src/view/contribution.dart';
import 'package:church_project/src/view/family.dart';
import 'package:church_project/src/view/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier{
List pageList=[
  Profile(),
  Family(),
  Activity(),
  Contribution(),
];
int index=0;

changeIndex(int currentIndex){
  index=currentIndex;
  notifyListeners();
}
}