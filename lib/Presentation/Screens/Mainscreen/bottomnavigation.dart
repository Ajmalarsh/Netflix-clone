import 'package:flutter/material.dart';
ValueNotifier<int>indexchangenotifier =ValueNotifier(0);

class bottomNavigation_page extends StatelessWidget {
  const bottomNavigation_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexchangenotifier, builder: (context,int newindex,
    _){
      return
    BottomNavigationBar(
      currentIndex: newindex,
      onTap: (index) {
        indexchangenotifier.value=index;
      },
      
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      backgroundColor:Colors.black ,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      items:const[
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
    
    ]);

    });
    
    
  }
}