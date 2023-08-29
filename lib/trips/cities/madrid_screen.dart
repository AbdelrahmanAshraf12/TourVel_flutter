import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class MadridScreen extends StatefulWidget {
  const MadridScreen({super.key});
  static const String screenRoute = "madridScreen";

  @override
  State<MadridScreen> createState() => _MadridScreenState();
}

class _MadridScreenState extends State<MadridScreen> {
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
                "MADRID",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text("Developers"),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text("About"),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(
                        Icons.login_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Logout",
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/mad.jfif"),
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text("The Madrid urban agglomeration has the second-largest GDP[15] in the European Union and its influence in politics, education, entertainment, environment, media, fashion, science, culture, and the arts all contribute to its status as one of the world's major global cities.[16][17] Due to its economic output, high standard of living, and market size, Madrid is considered the major financial centre[18] and the leading economic hub of the Iberian Peninsula and of Southern Europe.[19][20] The metropolitan area hosts major Spanish companies such as Telefónica, Iberia, BBVA and FCC.[21] It concentrates the bulk of banking operations in the country and it is the Spanish-speaking city generating the largest amount of webpages.[21] For innovation, Madrid is ranked 19th in the world and 7th in Europe from 500 cities, in the 2022-2023 annual analysts Innovation Cities Index, published by 2ThinkNow.[22]"

                "  Madrid houses the headquarters of the UN's World Tourism Organization (UNWTO), the Ibero-American General Secretariat (SEGIB), the Organization of Ibero-American States (OEI), and the Public Interest Oversight Board (PIOB). It also hosts major international regulators and promoters of the Spanish language: the Standing Committee of the Association of Spanish Language Academies, headquarters of the Royal Spanish Academy (RAE), the Instituto Cervantes and the Foundation of Emerging Spanish (FundéuRAE). Madrid organises fairs such as FITUR,[23] ARCO,[24] SIMO TCI[25] and the Madrid Fashion Week.[26] Madrid is home to two world-famous football clubs, Real Madrid and Atlético Madrid."

                 " While Madrid possesses modern infrastructure, it has preserved the look and feel of many of its historic neighbourhoods and streets. Its landmarks include the Plaza Mayor, the Royal Palace of Madrid; the Royal Theatre with its restored 1850 Opera House; the Buen Retiro Park, founded in 1631; the 19th-century National Library building (founded in 1712) containing some of Spain's historical archives; many national museums,and the Golden Triangle of Art, located along the Paseo del Prado and comprising three art museums: Prado Museum, the Reina Sofía Museum, a museum of modern art, and the Thyssen-Bornemisza Museum, which complements the holdings of the other two museums.Cibeles Palace and Fountain has become one of the monument symbols of the city.The mayor is José Luis Martínez-Almeida from the People's Party.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
