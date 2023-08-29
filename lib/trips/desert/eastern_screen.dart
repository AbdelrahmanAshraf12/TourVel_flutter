import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class EasternScreen extends StatefulWidget {
  const EasternScreen({super.key});
  static const String screenRoute = "easternScreen";

  @override
  State<EasternScreen> createState() => _EasternScreenState();
}

class _EasternScreenState extends State<EasternScreen> {
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
                "Eastern ",
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
            Image(image: AssetImage("assets/images/eas.jfif"),height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("The Eastern Desert (known archaically as Arabia or the Arabian Desert[1][2]) is the part of the Sahara desert that is located east of the Nile river. It spans 223,000 square kilometres (86,000 sq mi) of northeastern Africa and is bordered by the Nile river to the west and the Red Sea and Gulf of Suez to the east. It extends through Egypt, Eritrea, Sudan and Ethiopia. The Eastern Desert is also known as the Red Sea Hills. The Eastern Desert consists of a mountain range which runs parallel to the coast, wide sedimentary plateaus extending from either side of the mountains and the Red Sea coast.[3] The rainfall, climate, vegetation and animal life sustained in the desert varies between these different regions. The Eastern Desert has been a mining site for building materials, as well as precious and semi-precious metals, throughout history. It has historically contained many trade routes leading to and from the Red Sea, including the Suez Canal.",style: TextStyle(
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
