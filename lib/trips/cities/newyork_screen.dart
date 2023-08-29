import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class NewYorkScreen extends StatefulWidget {
  const NewYorkScreen({super.key});
  static const String screenRoute = "newyorkScreen";

  @override
  State<NewYorkScreen> createState() => _NewYorkScreenState();
}

class _NewYorkScreenState extends State<NewYorkScreen> {
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
                "NEW YORK ",
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
            Image(image: AssetImage("assets/images/new.jpg"),height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("The city is the geographical and demographic center of both the Northeast megalopolis and the New York metropolitan area, the largest metropolitan area in the U.S. by both population and urban area. With over 20.1 million people in its metropolitan statistical area and 23.5 million in its combined statistical area as of 2020, New York City is one of the world's most populous megacities.[21] The city and its metropolitan area are the premier gateway for legal immigration to the United States. As many as 800 languages are spoken in New York,[22] making it the most linguistically diverse city in the world. New York City is home to more than 3.2 million residents born outside the U.S., the largest foreign-born population of any city in the world as of 2016.[23] It is the most visited U.S. city by international visitors.[24] Providing continuous 24/7 service and contributing to the nickname The City That Never Sleeps, the New York City Subway is the largest single-operator rapid transit system in the world with 472 passenger rail stations, and Penn Station in Midtown Manhattan is the busiest transportation hub in the Western Hemisphere.[25]"

                "  New York City traces its origins to Fort Amsterdam and a trading post founded on the southern tip of Manhattan Island by Dutch colonists in approximately 1624. The settlement was named New Amsterdam (Dutch: Nieuw Amsterdam) in 1626 and was chartered as a city in 1653. The city came under British control in 1664 and was renamed New York after King Charles II granted the lands to his brother, the Duke of York.[26] The city was temporarily regained by the Dutch in July 1673 and was renamed New Orange; the city has been named New York since November 1674. New York City was the capital of the United States from 1785 until 1790,[27] and has been the largest U.S. city since 1790. The Statue of Liberty greeted millions of immigrants as they came to the U.S. via Ellis Island by ship in the late 19th and early 20th centuries, and is a symbol of the U.S. and its ideals of liberty and peace.[28]"

            "Anchored by Wall Street in the Financial District of Lower Manhattan, New York City has been called both the world's leading financial and fintech center[29][30] and the most economically powerful city in the world,[31] and is home to the world's two largest stock exchanges by market capitalization of their listed companies, the New York Stock Exchange and Nasdaq.[32][33] As of 2021, the New York metropolitan area is the second largest metropolitan economy in the world with a gross metropolitan product of almost 2.0 trillion. If the New York metropolitan area were its own country, it would have the tenth-largest economy in the world. New York City is an established safe haven for global investors.[34] As of 2023, New York City is the most expensive city in the world for expatriates to live.[35] New York City is home to the highest number of billionaires,[36][37] individuals of ultra-high net worth (greater than US 30 million),[38] and millionaires of any city in the world.[39] Many districts and monuments in New York City are major landmarks, including three of the world's ten-most visited tourist attractions in 2023.[40] A record 66.6 million tourists visited New York City in 2019. Times Square is the brightly illuminated hub of the Broadway Theater District,[41] one of the world's busiest pedestrian intersections[42] and a major center of the world's entertainment industry.[43] Many of the city's landmarks, skyscrapers, and parks are known around the world, and the city's fast pace led to the phrase New York minute. The Empire State Building is a global standard of reference to describe the height and length of other structures.[44] New York's residential and commercial real estate markets are the most expensive in the world.[45]",style: TextStyle(
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
