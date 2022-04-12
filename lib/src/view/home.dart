import 'package:church_project/src/viewModel/bottonNavigationProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(

        builder: (context,provider,child){
         return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.red,
              currentIndex: provider.index,
              onTap: (newValue){
                print('presed...');
                provider.changeIndex(newValue);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/home.png'),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/family.png'),
                    label: 'Family'
                ),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/activity.png'),
                    label: 'Activity'
                ),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/contribution.png'),
                    label: 'Contribution'
                ),
              ],
            ),
            body:provider.pageList[provider.index]
          );
        });
  }
}
