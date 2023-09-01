import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class CarcrossScreen extends StatefulWidget {
  const CarcrossScreen({super.key});
  static const String screenRoute = "carcrossScreen";

  @override
  State<CarcrossScreen> createState() => _CarcrossScreenState();
}

class _CarcrossScreenState extends State<CarcrossScreen> {
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
                "Carcross ",
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
            Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fcar.JPG?alt=media&token=c0820d61-e275-4dff-aad5-00fba79df7c2"),height: 160,
              width: 500,
              fit: BoxFit.fill,
            ),
            Center(
              child: Text(
                "Carcross Desert is commonly referred to as a desert, but is actually a series of northern sand dunes.The area's climate is too humid to be considered a true desert.The sand was formed during the last glacial period, when large glacial lakes formed and deposited silt. When the lakes dried, the dunes were left behind.Today, sand comes mainly from nearby Bennett Lake, carried by wind. The dunes contain a wide variety of plants, including unusual varieties such as Baikal sedge (Carex sabulosa) and Yukon lupine, among others."

                 " The Government of Yukon has made efforts to protect Carcross Desert in 1992, but failed due to opposition from locals who use the dunes for recreational purposes. Desert is significantly drier than the surrounding region, receiving less than 50 cm (20 in) of precipitation per year. This is due in part to a rain shadow effect caused by surrounding mountains.As a result, several rare species of plant life have taken hold in the comparatively arid conditions. Carex sabulosa, or Baikal sedge, is only known to exist in four other sites in North America, mainly existing in Asia. Yukon lupine, also unusual for the surroundings, grows like a weed.While the vegetation in the area currently locks much of the dune system in place, a large event such as a forest fire could easily clear out the vegetation and return the dunes to an active state.",
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
