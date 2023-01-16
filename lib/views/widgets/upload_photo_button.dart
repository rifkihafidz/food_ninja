// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';

class UploadPhotoButton extends StatelessWidget {
  final String imageUrl;
  final String titleButton;
  const UploadPhotoButton({
    Key? key,
    required this.imageUrl,
    required this.titleButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xFFF6F8FD),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
          ),
          SizedBox(height: 10),
          Text(
            titleButton,
            style: vigaTextFont.copyWith(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
