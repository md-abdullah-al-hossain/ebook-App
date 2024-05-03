import 'package:ebook_app/src/themes/app_color/color_extenstion.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double borderWidth;

  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.textColor,
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: TColor.primary, width: borderWidth),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
