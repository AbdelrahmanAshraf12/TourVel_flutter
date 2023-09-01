import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/auth.dart';
import 'package:flutter_project/navegation_bar/layout_screen.dart';
import 'package:flutter_project/screens/aboutScreen.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/screens/logoutScreen.dart';
import 'package:flutter_project/screens/register_screen.dart';
import 'package:flutter_project/screens/tours_screen.dart';
import 'package:flutter_project/screens/welcome_screen.dart';
import 'package:flutter_project/trips/cities/cities_screen.dart';
import 'package:flutter_project/trips/cities/london_screen.dart';
import 'package:flutter_project/trips/cities/madrid_screen.dart';
import 'package:flutter_project/trips/cities/newyork_screen.dart';
import 'package:flutter_project/trips/cities/rome_screen.dart';
import 'package:flutter_project/trips/desert/desrt_screen.dart';
import 'package:flutter_project/trips/desert/eastern_screen.dart';
import 'package:flutter_project/trips/desert/carcross_screen.dart';
import 'package:flutter_project/trips/desert/thepark_screen.dart';
import 'package:flutter_project/trips/desert/western_screen.dart';
import 'package:flutter_project/trips/mountains/alps_screen.dart';
import 'package:flutter_project/trips/mountains/santCatrineScreen.dart';
import 'package:flutter_project/trips/mountains/himalayasScreen.dart';
import 'package:flutter_project/trips/mountains/mountains_screen.dart';
import 'package:flutter_project/trips/mountains/everest _screen.dart';
import 'package:flutter_project/trips/sea_beaches/bali_screen.dart';
import 'package:flutter_project/trips/sea_beaches/bora_screen.dart';
import 'package:flutter_project/trips/sea_beaches/miami_screen.dart';
import 'package:flutter_project/trips/sea_beaches/myrtle%20_screen.dart';
import 'package:flutter_project/trips/sea_beaches/sea_screen.dart';

import 'navegation_bar/profileScreen.dart';
import 'screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home:AuthScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        AuthScreen.screenRoute: (context) => AuthScreen(),
        HomeScreen.screenRoute: (context) => HomeScreen(),
        RegisterScreen.screenRoute: (context) => RegisterScreen(),
        LoginScreen.screenRoute: (context) => LoginScreen(),
        LogoutScreen.screenRoute: (context) => LogoutScreen(),
        ToursScreen.screenRoute: (context) => ToursScreen(),
        AboutScreen.screenRoute: (context) => AboutScreen(),
        LayoutScreen.screenRoute: (context) => LayoutScreen(),
        UserScreen.screenRoute: (context) => UserScreen(),
        CitiesScreen.screenRoute: (context) => CitiesScreen(),
        DesertScreen.screenRoute: (context) => DesertScreen(),
        MountainsScreen.screenRoute: (context) => MountainsScreen(),
        SeaScreen.screenRoute: (context) => SeaScreen(),
        LondonScreen.screenRoute: (context) => LondonScreen(),
        MadridScreen.screenRoute: (context) => MadridScreen(),
        NewYorkScreen.screenRoute: (context) => NewYorkScreen(),
        RomeScreen.screenRoute: (context) => RomeScreen(),
        WesternScreen.screenRoute: (context) => WesternScreen(),
        EasternScreen.screenRoute: (context) => EasternScreen(),
        parkScreen.screenRoute: (context) => parkScreen(),
        CarcrossScreen.screenRoute: (context) => CarcrossScreen(),
        AlpsScreen.screenRoute: (context) => AlpsScreen(),
        HimalayasScreen.screenRoute: (context) => HimalayasScreen(),
        RockyScreen.screenRoute: (context) => RockyScreen(),
        AtlasScreen.screenRoute: (context) => AtlasScreen(),
        BoraScreen.screenRoute: (context) => BoraScreen(),
        MiamiScreen.screenRoute: (context) => MiamiScreen(),
        BaliScreen.screenRoute: (context) => BaliScreen(),
        MyrtleScreen.screenRoute: (context) => MyrtleScreen(),
      },
    );
  }
}
