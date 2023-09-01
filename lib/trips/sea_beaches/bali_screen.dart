import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class BaliScreen extends StatefulWidget {
  const BaliScreen({super.key});
  static const String screenRoute = "baliScreen";

  @override
  State<BaliScreen> createState() => _BaliScreenState();
}

class _BaliScreenState extends State<BaliScreen> {
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
                "Bali",
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
            Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fbali.jfif?alt=media&token=49d5e2a6-2e2e-4809-b6a4-9e40bf5d7637"),height: 160,
              width: 500,
              fit: BoxFit.fill,
            ),
            Center(
              child: Text("Bali is the only Hindu-majority province in Indonesia, with 86.9% of the population adhering to Balinese Hinduism.It is renowned for its highly developed arts, including traditional and modern dance, sculpture, painting, leather, metalworking, and music. The Indonesian International Film Festival is held every year in Bali. Other international events that have been held in Bali include Miss World 2013, the 2018 Annual Meetings of the International Monetary Fund and the World Bank Group and the 2022 G20 summit. In March 2017, TripAdvisor named Bali as the world's top destination in its Traveller's Choice award, which it also earned in January 2021.[10][11]  Bali is part of the Coral Triangle, the area with the highest biodiversity of marine species, especially fish and turtles.[12] In this area alone, over 500 reef-building coral species can be found. For comparison, this is about seven times as many as in the entire Caribbean.[13] Bali is the home of the Subak irrigation system, a UNESCO World Heritage Si.",style: TextStyle(
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
