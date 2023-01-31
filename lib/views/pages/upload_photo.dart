// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';
import 'package:food_ninja/views/pages/home_page.dart';
import 'package:food_ninja/views/widgets/base_page_constraint.dart';
import 'package:food_ninja/views/widgets/custom_icon_button.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/upload_photo_button.dart';

class UploadPhoto extends StatelessWidget {
  static const routeName = '/upload-photo';

  const UploadPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePageConstraint(
      content: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 38,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              onPressed: () {},
              spreadRadius: 5,
              backgroundColor: Color(0xFFFEF6EE),
              iconColor: brownColor,
              icon: Icons.arrow_back_ios_new,
              width: 45,
              height: 45,
            ),
            SizedBox(height: 20),
            Text(
              'Upload Your Photo\nProfile',
              style: vigaTextFont.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This data will be displayed in your account\nprofile for security',
              style: vigaTextFont.copyWith(
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
            SizedBox(height: 30),
            Center(
              child: CustomButton(
                title: 'Next',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    HomePage.routeName,
                  );
                },
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
