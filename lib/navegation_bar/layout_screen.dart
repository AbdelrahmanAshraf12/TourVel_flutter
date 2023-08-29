import 'package:flutter/material.dart';
import 'package:flutter_project/navegation_bar/profileScreen.dart';

import '../screens/tours_screen.dart';
import 'depart_screen.dart';



class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  static const String screenRoute = "layoutScreen";

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex=1;
  List<Widget> screens=[

    DepartScreen(),
    ToursScreen(),
    UserScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });

        },
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined),
            label: "Departs",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "Profile",
          ),


        ],),



    );
  }
}
