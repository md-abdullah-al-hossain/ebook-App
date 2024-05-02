import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double height;
  final Color color;
  final Color textColor;
  final double shape;
  final TextStyle style;

  const MyButton({
    Key? key,
    required this.text,
    required this.height,
    required this.color,
    required this.textColor,
    required this.shape,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        elevation: 5,
        onPressed: () {},
        color: color, // Use the provided color property here
        textColor: textColor,
        height: height,
        minWidth: double.maxFinite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(shape),
        ),
        child: Text(text,
          style: style,
        ),
        
      
        
      ),
    );
  }
}
