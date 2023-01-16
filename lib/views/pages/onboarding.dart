// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/views/pages/sign_in.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  static const routeName = '/on-boarding';

  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 60),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/OnBoarding.png',
              ),
              SizedBox(height: 15),
              Text(
                'Food Ninja is Where Your\nComfort Food Lives',
                style: GoogleFonts.viga(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Enjoy a fast and smooth food delivery at\nyour doorstep',
                style: GoogleFonts.viga(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CustomButton(
                title: 'Next',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignIn.routeName, (route) => false);
                },
                height: 57,
                width: MediaQuery.of(context).size.width / 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
