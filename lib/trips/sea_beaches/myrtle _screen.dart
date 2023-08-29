import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class MyrtleScreen extends StatefulWidget {
  const MyrtleScreen({super.key});
  static const String screenRoute = "myrtleScreen";

  @override
  State<MyrtleScreen> createState() => _MyrtleScreenState();
}

class _MyrtleScreenState extends State<MyrtleScreen> {
  bool isCan=true;

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
                "Myrtle",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),

            ],
          ),
          actions:[PopupMenuButton<int>(
            onSelected: (item)=>onSelected(context,item),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Text("Developers"),),
              PopupMenuItem(
                value: 1,
                child: Text("About"),),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.login_outlined,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text("Logout",textAlign: TextAlign.left,),
                  ],
                ),),
            ],
          ),




          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/alps.JPG"),height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("Myrtle Beach is one of the major centers of tourism in South Carolina and the United States. The city's warm subtropical climate, miles of beaches, 86 golf courses, and 1,800 restaurants attract over 20 million visitors each year, making Myrtle Beach one of the most visited destinations in the country.[10][11]  Located along the historic King's Highway (modern U.S. Route 17), the region was once home to the Waccamaw people. During the colonial period, the Whither family settled in the area, and a prominent local waterway, Wither's Swash, is named in their honor. Originally called alternately (New Town) or (Withers), the area was targeted for development as a resort community by Franklin Burroughs, whose sons completed a railroad to the beach and the first inn, Seaside Inn. His widow named the new community Myrtle Beach after the local wax-myrtle shrubs.  The Myrtle Beach metropolitan area is the one of fastest-growing metropolitan areas in the country, with a population of 551,126 as of the 2020 census.",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            ),


          ],
        ),
      ),


    );
  }
}
