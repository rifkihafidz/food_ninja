// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';
import 'package:food_ninja/views/pages/payment.dart';
import 'package:food_ninja/views/widgets/base_page_constraint.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/custom_icon_button.dart';
import 'package:food_ninja/views/widgets/custom_input.dart';

class EarlyBio extends StatelessWidget {
  static const routeName = '/early-bio';

  const EarlyBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePageConstraint(
      content: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 40,
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
              'Fill in your bio to get\nstarted',
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
                  Navigator.pushNamed(
                    context,
                    Payment.routeName,
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
