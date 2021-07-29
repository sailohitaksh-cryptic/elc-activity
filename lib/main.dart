import 'package:eventaholic/splash_screen.dart';
import 'package:eventaholic/student_profile_view.dart';
import 'package:eventaholic/studentprofile.dart';
import 'package:eventaholic/sunburn_desc.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login.dart';
import 'signup.dart';
import 'signup1.dart';
import 'homescreen.dart';
import 'splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'event_tap_info.dart';
import 'favourites.dart';
import 'student_profile_view.dart';
import 'studentprofile.dart';
import 'categories.dart';
import 'sunburn_desc.dart';
import 'laberinto.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await FirebaseAuth.instance.useEmulator('http://localhost:9099');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        SignUp.id:(context)=>SignUp(),
        SignUpScreen.id:(context)=>SignUpScreen(),
        HomeScreen.id:(context)=>HomeScreen(),
        EventTapInfo.id:(context)=>EventTapInfo(),
        SunburnDesc.id: (context)=>SunburnDesc(),
        Laberinto.id: (context)=>Laberinto(),
        Favourites.id:(context)=>Favourites(),
        StudentProfileView.id:(context)=>StudentProfileView(),
        StudentProfile.id:(context)=>StudentProfile(),
        Categories.id:(context)=>Categories(),
      },
    );
  }
}

