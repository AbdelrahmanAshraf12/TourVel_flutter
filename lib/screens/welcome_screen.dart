import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const String screenRoute="welcomeScreen";


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],



      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: formKey,
              child: Center(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Logo.png"),
                      height: 300,
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      "TourVel",
                      style: GoogleFonts.aclonica(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   SizedBox(height: 30,),
                    Text(
                      "Welcome in the World",
                      style: GoogleFonts.alata(
                        fontSize:34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        onPressed: ()  {
                          if (formKey.currentState!.validate()) {

                              Navigator.of(context).pushNamed("loginScreen");
                          }
                        },
                        child: const Text(
                          "login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        onPressed: ()  {
                          if (formKey.currentState!.validate()) {

                            Navigator.of(context).pushNamed("registerScreen");
                          }
                        },
                        child: const Text(
                          "register",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
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
    );
  }
}
