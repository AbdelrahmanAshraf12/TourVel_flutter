import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/aboutScreen.dart';

import 'developersScreen.dart';
import 'logoutScreen.dart';

class ToursScreen extends StatelessWidget {
  ToursScreen({super.key});
  static const String screenRoute = "toursScreen";
  bool isCan = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.blueGrey, elevation: 0, actions: [
        PopupMenuButton<int>(
          onSelected: (item) => onSelected(context, item),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Text("Developers"),
            ),
            PopupMenuItem(
              value: 1,
              child: Text("About"),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.login_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Logout",
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(

              image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2FLogo.png?alt=media&token=b9b2d24e-1bff-4c8d-8057-15a052e56eef"),

            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      print("Clicked Developers");
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DevelopersScreen(),
        ),
      );
      break;
    case 1:
      print("Clicked About");
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AboutScreen(),
        ),
      );
      break;
    case 2:
      print("Clicked Logout");
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LogoutScreen(),
        ),
      );

      break;
  }
}
