import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  static const String screenRoute = "aboutScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("What is Tourvel ? "
    ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,

              ),),
            ),
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Center(
              child: Text("Tourvel is an Application to teach you about alot of places around the world just click on the place then you can see the Description of it."
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
            ),
          ),

          SizedBox(height: 290,),
          Center(
            child: Text("Copyright©️2023 Tourvel . All Rights Reserved "
              ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
color: Colors.grey
              ),),
          ),

        ],
      ),
    );
  }
}
