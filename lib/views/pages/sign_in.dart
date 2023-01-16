// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/views/pages/early_bio.dart';
import 'package:food_ninja/views/pages/sign_up.dart';
import 'package:food_ninja/views/widgets/brand.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/sign-in';

  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/Splash.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Brand(),
              SizedBox(height: 60),
              Text(
                'Login with Your Account',
                style: GoogleFonts.viga(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  style: GoogleFonts.viga(color: Color(0xFF3B3B3B)),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    filled: true,
                    fillColor: Color(0xFFF6F8FD),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFF4F4F4),
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFF4F4F4),
                        width: 3,
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.viga(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  obscureText: true,
                  style: GoogleFonts.viga(color: Color(0xFF3B3B3B)),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    filled: true,
                    fillColor: Color(0xFFF6F8FD),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFF4F4F4),
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFF4F4F4),
                        width: 3,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.viga(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Or Continue With',
                style: GoogleFonts.viga(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF6F8FD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Facebook-Circle.png',
                          width: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Facebook',
                          style: GoogleFonts.viga(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF6F8FD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Google.png',
                          width: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Google',
                          style: GoogleFonts.viga(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUp.routeName);
                },
                child: Text(
                  'Don\'t have an account?',
                  style: GoogleFonts.viga(
                    color: Color(0xFF42DC86),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot your password?',
                  style: GoogleFonts.viga(
                    color: Color(0xFF42DC86),
                  ),
                ),
              ),
              SizedBox(height: 15),
              CustomButton(
                title: 'Sign In',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, EarlyBio.routeName, (route) => false);
                },
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
