// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';
import 'package:food_ninja/views/pages/early_bio.dart';
import 'package:food_ninja/views/pages/sign_in.dart';
import 'package:food_ninja/views/widgets/base_page.dart';
import 'package:food_ninja/views/widgets/brand.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/custom_input_sign_up.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/sign-up';

  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      content: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 40),
            Brand(),
            SizedBox(height: 60),
            Text(
              'Sign Up for Free',
              style: vigaTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            CustomInputSignUp(
                hintText: 'Username...', iconUrl: 'assets/icon_username.png'),
            SizedBox(height: 12),
            CustomInputSignUp(
                hintText: 'Email', iconUrl: 'assets/icon_email.png'),
            SizedBox(height: 12),
            CustomInputSignUp(
              hintText: 'Password...',
              iconUrl: 'assets/icon_password.png',
              obscureText: true,
              suffixIcon: true,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignIn.routeName);
              },
              child: Text(
                'Already have an account?',
                style: vigaTextFont.copyWith(color: Color(0xFF42DC86)),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              title: 'Sign Up',
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
    );
  }
}
