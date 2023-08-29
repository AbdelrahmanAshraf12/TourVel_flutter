import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class parkScreen extends StatefulWidget {
  const parkScreen({super.key});
  static const String screenRoute = "parkScreen";

  @override
  State<parkScreen> createState() => _parkScreenState();
}

class _parkScreenState extends State<parkScreen> {
  bool isCan = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Row(
            children: [
              CircleAvatar(
                maxRadius: 24,
                //radius: 25 ,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjA2IU50H3xQP3V1ISbBcM2i2iXUQ69MCwwKxE5VCVFg&s"),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "Park ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/park.JPG"),
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(
                "The park is the site of large white chalk rock formations, created through erosion by wind and sand. It is also the site of cliffs (at the northern end of the Farafra Depression), sand dunes (part of the Great Sand Sea), as well as Wadi Hennis and oases at Ain El Maqfi and Ain El Wadi.  White Desert National Park covers an area of 300 km2 (120 sq mi). The highest point in the park is at El Qess Abu Said at 353 m (1,158 ft) above sea level, and the lowest is at Wadi Hennis at 32 m (105 ft).The park serves as the refuge for various animals, including the endangered Rhim gazelle and the vulnerable Dorcas gazelle, as well as Barbary sheep; jackals; Rüppell's, red and fennec foxes; and the sand cat.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
