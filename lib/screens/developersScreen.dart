import 'package:flutter/material.dart';

class DevelopersScreen extends StatefulWidget {
  const DevelopersScreen({super.key});

  @override
  State<DevelopersScreen> createState() => _DevelopersScreenState();
}

class _DevelopersScreenState extends State<DevelopersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Developers",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),
        elevation: 0,
        centerTitle: true,

      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 15,),

            Row(
              children: [
                const Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [

                    CircleAvatar(

                      radius: 50.0,
                      backgroundImage: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fabdoashraf.jpeg?alt=media&token=0531575c-5c67-4d91-8670-b61d6f13742c"),

                    ),


                  ],
                ),

                const SizedBox(
                  width: 15,

                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,

                    children: [
                      const Text("Abdelrahman Ashraf sobhy", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),

                    ],
                  ),
                ),


              ],

            ),
            SizedBox(height: 100,),
            Row(
                  children: [
                    const Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [

                        CircleAvatar(

                          radius: 50.0,
                          backgroundImage: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fnegm.JPG?alt=media&token=f04a7edc-8d71-4f0d-84fb-2a203af2d688"),

                        ),


                      ],
                    ),

                    const SizedBox(
                      width: 15,

                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,

                        children: [
                          const Text("Abdelrahman Magdy Abdelmoneim ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),

                        ],
                      ),
                    ),


                  ],

                ),
                SizedBox(height: 80,),
            Row(
                  children: [
                    const Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [

                        CircleAvatar(

                          backgroundImage: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2Fabdom.jpg?alt=media&token=5588c4b6-2e45-4684-a2fa-17f3c3407d50"),
                          radius: 50.0,

                        ),


                      ],
                    ),

                    const SizedBox(
                      width: 15,

                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,

                        children: [
                          const Text("Abdelrahman Mohamed Hassan ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),

                        ],
                      ),
                    ),


                  ],

                ),






            ],
            ),
          ),
        ),
      ),
    );
  }
}



