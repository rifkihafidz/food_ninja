// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  Widget content;
  BasePage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/Splash.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: content,
          ),
        ),
      ),
    );
  }
}
