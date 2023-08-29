import 'package:flutter/material.dart';

import '../../screens/tours_screen.dart';

class CitiesScreen extends StatefulWidget {
  const CitiesScreen({super.key});
  static const String screenRoute = "citiesScreen";

  @override
  State<CitiesScreen> createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
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
                "Cities",
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
                                    Navigator.of(context).pushNamed("londonScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/lon.jfif"),height: 160,
                                            width: 250,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("LONDON",style: TextStyle(
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
                                    Navigator.of(context).pushNamed("romeScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/rome.jfif"),height: 160,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text(" ROME",style: TextStyle(
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
                                    Navigator.of(context).pushNamed("madridScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/mad.jfif"),height: 160,
                                            width: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("MADRID",style: TextStyle(
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
                                    Navigator.of(context).pushNamed("newyorkScreen");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assets/images/new.jpg"),height: 160,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("New York",style: TextStyle(
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
