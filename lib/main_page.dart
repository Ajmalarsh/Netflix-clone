import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/Screens/Mainscreen/bottomnavigation.dart';
import 'package:netflix_clone/Presentation/Screens/download_screen/downloadscreen.dart';
import 'package:netflix_clone/Presentation/Screens/searchscreen/search.dart';
import 'package:netflix_clone/colors/colors.dart';

class Main_page extends StatelessWidget {
  Main_page({ Key? key }) : super(key: key);
  final pages=[
    Download_Page(),
    Search_Page()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: ValueListenableBuilder(valueListenable: indexchangenotifier, builder: (context, int index,_){
        return pages[index];
      })),
      bottomNavigationBar: bottomNavigation_page(),
    );
  }
}