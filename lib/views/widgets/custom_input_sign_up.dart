// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';

class CustomInputSignUp extends StatelessWidget {
  final String hintText;
  final String iconUrl;
  final bool obscureText;
  final bool suffixIcon;
  const CustomInputSignUp({
    Key? key,
    required this.hintText,
    required this.iconUrl,
    this.obscureText = false,
    this.suffixIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: vigaTextFont.copyWith(color: Color(0xFF3B3B3B)),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
            bottom: 10,
            top: 5,
          ),
          child: Image.asset(
            iconUrl,
            width: 20,
          ),
        ),
        suffixIcon: suffixIcon
            ? Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
              )
            : SizedBox(),
      ),
    );
  }
}
