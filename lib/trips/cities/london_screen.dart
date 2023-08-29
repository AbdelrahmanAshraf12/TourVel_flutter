import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class LondonScreen extends StatefulWidget {
  const LondonScreen({super.key});
  static const String screenRoute = "londonScreen";

  @override
  State<LondonScreen> createState() => _LondonScreenState();
}

class _LondonScreenState extends State<LondonScreen> {
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
                "LONDON ",
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
            Image(image: AssetImage("assets/images/lon.jfif"),height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("As one of the world's major global cities,[15] London exerts a strong influence on its arts, entertainment, fashion, commerce and finance, education, health care, media, science and technology, tourism, transport, and communications.[16][17] Its GDP (€801.66 billion in 2017) makes it the largest urban economy in Europe,[18] and it is one of the major financial centres in the world. With Europe's largest concentration of higher education institutions,[19] it is home to some of the highest-ranked academic institutions in the world—Imperial College London in natural and applied sciences, the London School of Economics in social sciences, and the comprehensive University College London.[20][21] London is the most visited city in Europe and has the busiest city airport system in the world.[22] The London Underground is the oldest rapid transit system in the world.[23]"

                "London's diverse cultures encompass over 300 languages.[24] The mid-2018 population of Greater London of about 9 million[25] made it Europe's third-most populous city,[26] accounting for 13.4% of the population of the United Kingdom[27] and over 16% of the population of England. The Greater London Built-up Area is the fourth-most populous in Europe, with about 9.8 million inhabitants at the 2011 census.[28][29] The London metropolitan area is the third-most populous in Europe, with about 14 million inhabitants in 2016,[note 4][30][31] granting London the status of a megacity."

               "London has four World Heritage Sites: the Tower of London; Kew Gardens; the combined Palace of Westminster, Westminster Abbey, and St Margaret's Church; and also the historic settlement in Greenwich, where the Royal Observatory, Greenwich, defines the prime meridian (0° longitude) and Greenwich Mean Time.[32] Other landmarks include Buckingham Palace, the London Eye, Piccadilly Circus, St Paul's Cathedral, Tower Bridge, and Trafalgar Square. London has many museums, galleries, libraries, and cultural venues, including the British Museum, National Gallery, Natural History Museum, Tate Modern, British Library, and numerous West End theatres.[33] Important sporting events held in London include the FA Cup Final, the Wimbledon Tennis Championships, and the London Marathon. In 2012, London became the first city to host three Summer Olympic Games.",style: TextStyle(
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
