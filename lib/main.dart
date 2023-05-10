// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firbase_signup_signin/Constant.dart/colors.dart';
import 'package:firbase_signup_signin/Screens/Home.dart';
import 'package:firbase_signup_signin/Screens/Login/Login.dart';
import 'package:firbase_signup_signin/Screens/Thebase.dart';
import 'package:firbase_signup_signin/widgets/SplashNaruto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'authfire.dart';


// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();  runApp(const NarutoApp()); }
void main() async {
  
runApp( NarutoApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class NarutoApp extends StatelessWidget {
  const NarutoApp({super.key});




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Naruto App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            letterSpacing: 1,
          ),)
      ),
      home: LoginScreen(),
    );
  }
}