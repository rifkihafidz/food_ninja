// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  const CustomInput({required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: vigaTextFont.copyWith(color: Color(0xFF3B3B3B)),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        filled: true,
        fillColor: Color(0xFFF6F8FD),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Color(0xFFF4F4F4),
            width: 3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Color(0xFFF4F4F4),
            width: 3,
          ),
        ),
        hintText: hintText,
        hintStyle: vigaTextFont.copyWith(color: Colors.grey),
      ),
    );
  }
}
