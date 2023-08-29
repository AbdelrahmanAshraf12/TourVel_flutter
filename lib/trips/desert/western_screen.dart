import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class WesternScreen extends StatefulWidget {
  const WesternScreen({super.key});
  static const String screenRoute = "westernScreen";

  @override
  State<WesternScreen> createState() => _WesternScreenState();
}

class _WesternScreenState extends State<WesternScreen> {
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
                "Western  ",
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
            Image(image: AssetImage("assets/images/west.jfif"),height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("The Western Desert of Egypt is an area of the Sahara that lies west of the river Nile, up to the Libyan border, and south from the Mediterranean Sea to the border with Sudan. It is named in contrast to the Eastern Desert which extends east from the Nile to the Red Sea. The Western Desert is mostly rocky desert, though an area of sandy desert, known as the Great Sand Sea, lies to the west against the Libyan border. The desert covers an area of 680,650 km2 (262,800 sq mi) which is two-thirds of the land area of the country.[1] Its highest elevation is 1,000 m (3,300 ft) in the Gilf Kebir plateau to the far south-west of the country, on the Egypt-Sudan-Libya border. The Western Desert is barren and uninhabited save for a chain of oases which extend in an arc from Siwa, in the north-west, to Kharga in the south. It has been the scene of conflict in modern times, particularly during the Second World War.",style: TextStyle(
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
