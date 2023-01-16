// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Logo.png',
            width: 250,
            height: 200,
          ),
          Text(
            'FoodNinja',
            style: vigaTextFont.copyWith(
              fontSize: 40,
              color: Color(0xFF53E88B),
              letterSpacing: 0.5,
            ),
          ),
          Text(
            'Delivers Your Favorite Food',
            style: interTextFont.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xFF09051C),
            ),
          ),
        ],
      ),
    );
  }
}
