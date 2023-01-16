// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomPaymentButton extends StatelessWidget {
  final String imageUrl;
  const CustomPaymentButton({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Color(0xFFF6F8FD),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Image.asset(
          imageUrl,
        ),
      ),
    );
  }
}
