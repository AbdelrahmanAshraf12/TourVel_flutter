import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class BoraScreen extends StatefulWidget {
  const BoraScreen({super.key});
  static const String screenRoute = "boraScreen";

  @override
  State<BoraScreen> createState() => _BoraScreenState();
}

class _BoraScreenState extends State<BoraScreen> {
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
                "Bora Bora",
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
            Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fbora.jfif?alt=media&token=6e596826-95b9-4161-8f86-77b04d0cc9ae"),height: 160,
              width: 500,
              fit: BoxFit.fill,
            ),
            Center(
              child: Text("Bora Bora (French: Bora-Bora; Tahitian: Pora Pora) is an island group in the Leeward Islands. The Leeward Islands comprise the western part of the Society Islands of French Polynesia, which is an overseas collectivity of the French Republic in the Pacific Ocean. Bora Bora has a total land area of 30.55 km2 (12 sq mi). The main island, located about 230 kilometres (125 nautical miles) northwest of Papeete, is surrounded by a lagoon and a barrier reef. In the center of the island are the remnants of an extinct volcano, rising to two peaks, Mount Pahia and Mount Otemanu; the highest point is at 727 m (2,385 ft). Bora Bora is part of the Commune of Bora-Bora, which also includes the atoll of Tūpai. The languages spoken in Bora Bora are Tahitian and French. However, due to the high tourism population, many natives of Bora Bora have learned to speak English.",style: TextStyle(
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
