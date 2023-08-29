import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class RomeScreen extends StatefulWidget {
  const RomeScreen({super.key});
  static const String screenRoute = "romeScreen";

  @override
  State<RomeScreen> createState() => _RomeScreenState();
}

class _RomeScreenState extends State<RomeScreen> {
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
                "ROME",
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
            Image(image: AssetImage("assets/images/rome.jfif"),height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("Rome (Italian and Latin: Roma [ˈroːma] (listen)) is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale. With 2,860,009 residents in 1,285 km2 (496.1 sq mi),[2] Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits. The Metropolitan City of Rome, with a population of 4,355,725 residents, is the most populous metropolitan city in Italy.Its metropolitan area is the third-most populous within Italy.[4] Rome is located in the central-western portion of the Italian Peninsula, within Lazio (Latium), along the shores of the Tiber. Vatican City (the smallest country in the world)[5] is an independent country inside the city boundaries of Rome, the only existing example of a country within a city. Rome is often referred to as the City of Seven Hills due to its geographic location, and also as the Eternal City.[6] Rome is generally considered to be the cradle of Western civilization and Christian culture, and the centre of the Catholic Church.",style: TextStyle(
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
