import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/screens/login_screen.dart';
import 'package:flutter_project/screens/welcome_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  static const String screenRoute="/";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: StreamBuilder<User?>(
  stream: FirebaseAuth.instance.authStateChanges(),
  builder:((context, snapshot) {
    if(snapshot.hasData){
    return HomeScreen();
    }else{
    return WelcomeScreen();
    }
  }
  ) ,
),


    );
  }
}
