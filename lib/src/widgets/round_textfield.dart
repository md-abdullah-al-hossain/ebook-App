import 'package:ebook_app/src/themes/app_color/color_extenstion.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundTextfield extends StatelessWidget {
  final String hintext;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obscureText;

  const RoundTextfield({
    super.key,
    required this.hintext,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textbox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: hintext,
          labelStyle: const TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
