import 'package:flutter/material.dart';

class BasePageConstraint extends StatelessWidget {
  final Widget content;
  const BasePageConstraint({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
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
    );
  }
}
