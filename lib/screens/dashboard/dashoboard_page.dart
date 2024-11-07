
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:radiojavan_app/screens/dashboard/category/category_page.dart';
import 'package:radiojavan_app/screens/dashboard/main/main_page.dart';
import 'package:radiojavan_app/screens/dashboard/setting/setting_page.dart';

class DashoboardPage extends StatefulWidget {
  const DashoboardPage({super.key});

  @override
  State<DashoboardPage> createState() => _DashoboardPageState();
}

class _DashoboardPageState extends State<DashoboardPage> {

  int _currentIndex = 0;
  
  List widgets = [
    MainPage(),CategoryPage(),SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,

      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text('Radio Javan', style: TextStyle(
          color: Colors.white
        ),),
      ),
      
      body: widgets.elementAt(_currentIndex) ,

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        items: [
          
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text('خانه'),
            activeColor: Colors.red,),
          BottomNavyBarItem(icon: Icon(Icons.category), title: Text('دسته بندی')),
          BottomNavyBarItem(icon: Icon(Icons.settings), title: Text('نظیمات')),

        ],
        onItemSelected: (int value) {
          setState(() {
            _currentIndex = value;
          });
      },

      ),


    );
  }
}
