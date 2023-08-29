import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String screenRoute="homeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(" You are logged in"
              //     ,style: TextStyle(
              //   fontWeight: FontWeight.bold,
              //   fontSize: 35,
              // ),),
              Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/images/Logo.png"),
                      height: 450,
                    ),
                  ],
                ),
              ),
              //


              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                Navigator.of(context).pushNamed("layoutScreen");
              },
                color: Colors.green,
                child: Text("Start",style:TextStyle(
                  fontSize: 20,),
                ),
              ),
              const SizedBox(height: 60,),
            ],
          )),
    );
  }
}
