// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/views/pages/payment.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/custom_input.dart';
import 'package:google_fonts/google_fonts.dart';

class EarlyBio extends StatelessWidget {
  static const routeName = '/early-bio';

  const EarlyBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/Splash.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(onPressed: () {}),
              SizedBox(height: 20),
              Text(
                'Fill in your bio to get\nstarted',
                style: GoogleFonts.viga(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'This data will be displayed in your account\nprofile for security',
                style: GoogleFonts.viga(
                  fontWeight: FontWeight.w400,
                  height: 1.75,
                ),
              ),
              SizedBox(height: 20),
              CustomInput(hintText: 'First Name'),
              SizedBox(height: 20),
              CustomInput(hintText: 'Last Name'),
              SizedBox(height: 20),
              CustomInput(hintText: 'Mobile Number'),
              Spacer(),
              Center(
                child: CustomButton(
                  title: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, Payment.routeName);
                  },
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
