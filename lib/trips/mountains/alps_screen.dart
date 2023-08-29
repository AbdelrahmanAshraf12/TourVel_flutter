import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class AlpsScreen extends StatefulWidget {
  const AlpsScreen({super.key});
  static const String screenRoute = "alpsScreen";

  @override
  State<AlpsScreen> createState() => _AlpsScreenState();
}

class _AlpsScreenState extends State<AlpsScreen> {
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
                "Alps",
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
              child: Text("Alps , The Alpine arch extends from Nice on the western Mediterranean to Trieste on the Adriatic and Vienna at the beginning of the Pannonian Basin. The mountains were formed over tens of millions of years as the African and Eurasian tectonic plates collided. Extreme shortening caused by the event resulted in marine sedimentary rocks rising by thrusting and folding into high mountain peaks such as Mont Blanc and the Matterhorn.  Mont Blanc spans the French–Italian border, and at 4,809 m (15,778 ft) is the highest mountain in the Alps. The Alpine region area contains 128 peaks higher than 4,000 m (13,000 ft).  The altitude and size of the range affect the climate in Europe; in the mountains, precipitation levels vary greatly and climatic conditions consist of distinct zones. Wildlife such as ibex live in the higher peaks to elevations of 3,400 m (11,155 ft), and plants such as edelweiss grow in rocky areas in lower elevations as well as in higher elevations.  Evidence of human habitation in the Alps goes back",style: TextStyle(
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
