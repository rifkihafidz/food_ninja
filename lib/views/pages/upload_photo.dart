// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/upload_photo_button.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPhoto extends StatelessWidget {
  static const routeName = '/upload-photo';

  const UploadPhoto({Key? key}) : super(key: key);

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
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 38,
            bottom: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(onPressed: () {
                Navigator.pop(context);
              }),
              SizedBox(height: 20),
              Text(
                'Upload Your Photo\nProfile',
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
              UploadPhotoButton(
                imageUrl: 'assets/Gallery.png',
                titleButton: 'From Gallery',
              ),
              SizedBox(height: 20),
              UploadPhotoButton(
                imageUrl: 'assets/Camera.png',
                titleButton: 'From Camera',
              ),
              Spacer(),
              Center(
                child: CustomButton(
                  title: 'Next',
                  onPressed: () {},
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