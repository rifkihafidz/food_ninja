import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget content;
  const BasePage({Key? key, required this.content}) : super(key: key);

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
