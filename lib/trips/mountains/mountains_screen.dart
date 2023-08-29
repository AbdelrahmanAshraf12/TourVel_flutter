import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class MountainsScreen extends StatefulWidget {
  const MountainsScreen({super.key});
  static const String screenRoute = "mountainsScreen";

  @override
  State<MountainsScreen> createState() => _MountainsScreenState();
}

class _MountainsScreenState extends State<MountainsScreen> {
  bool isCan=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
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
                "Mountains",
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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("alpsScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/alps.JPG"),height: 160,
                                            width: 250,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("Alps",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blueGrey,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("santScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/sant.jpg"),height: 160,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text(" Sant Catrine ",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blueGrey,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("himalayasScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/hima.jfif"),height: 160,
                                            width: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("Himalayas",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blueGrey,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("everestScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/everest.JPG"),height: 160,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("Everest ",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),),
        ],
      ),
    );
  }
}
