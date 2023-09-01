import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class HimalayasScreen extends StatefulWidget {
  const HimalayasScreen({super.key});
  static const String screenRoute = "himalayasScreen";

  @override
  State<HimalayasScreen> createState() => _HimalayasScreenState();
}

class _HimalayasScreenState extends State<HimalayasScreen> {
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
                "Himalayas",
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
            Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Feverest.JPG?alt=media&token=8dab79b0-129d-4d85-99fd-927046dc29fb"),height: 160,
              width: 500,
              fit: BoxFit.fill,
            ),
            Center(
              child: Text("The Himalayas abut or cross five countries: Nepal, China, Pakistan, Bhutan and India. The sovereignty of the range in the Kashmir region is disputed among India, Pakistan, and China.The Himalayan range is bordered on the northwest by the Karakoram and Hindu Kush ranges, on the north by the Tibetan Plateau, and on the south by the Indo-Gangetic Plain. Some of the world's major rivers, the Indus, the Ganges, and the Tsangpo–Brahmaputra, rise in the vicinity of the Himalayas, and their combined drainage basin is home to some 600 million people; 53 million people live in the Himalayas.The Himalayas have profoundly shaped the cultures of South Asia and Tibet. Many Himalayan peaks are sacred in Hinduism and Buddhism. The summits of several—Kangchenjunga (from the Indian side), Gangkhar Puensum, Machapuchare, Nanda Devi, and Kailas in the Tibetan Transhimalaya—are off-limits to climbers.  Lifted by the subduction of the Indian tectonic plate under the Eurasian Plate, the Himalayan mountain range runs west-no.",style: TextStyle(
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
