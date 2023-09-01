import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class AtlasScreen extends StatefulWidget {
  const AtlasScreen({super.key});
  static const String screenRoute = "santScreen";

  @override
  State<AtlasScreen> createState() => _AtlasScreenState();
}

class _AtlasScreenState extends State<AtlasScreen> {
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
                "Sant Catrine",
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
            Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fsant.jpg?alt=media&token=73871540-4e77-4bce-b7a4-c1f82d774470"),height: 160,
              width: 500,
              fit: BoxFit.fill,
            ),
            Center(
              child: Text("Sant Catrine mountain Egypt , On the north of Mount Catherine, archaeologists uncovered a cave with paintings of people and animals in red pigment dates back to the Chalcolithic Period, c. 5th–4th millennium BC in January of 2020. According to John Darnell, red painted images are not as common as engraved images and text. The painting resembling a camel shows that at least some of the graffiti is not older than the first millennium BC and may belong to later period. The cave was filled with graffiti from different periods over time",style: TextStyle(
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
