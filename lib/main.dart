// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/views/pages/early_bio.dart';
import 'package:food_ninja/views/pages/home_page.dart';
import 'package:food_ninja/views/pages/onboarding.dart';
import 'package:food_ninja/views/pages/payment.dart';
import 'package:food_ninja/views/pages/sign_in.dart';
import 'package:food_ninja/views/pages/sign_up.dart';
import 'package:food_ninja/views/pages/splash_screen.dart';
import 'package:food_ninja/views/pages/upload_photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoarding.routeName: (context) => OnBoarding(),
        SignIn.routeName: (context) => SignIn(),
        SignUp.routeName: (context) => SignUp(),
        EarlyBio.routeName: (context) => EarlyBio(),
        Payment.routeName: (context) => Payment(),
        UploadPhoto.routeName: (context) => UploadPhoto(),
        HomePage.routeName: (context) => HomePage(),
      },
      home: HomePage(),
    );
  }
}
