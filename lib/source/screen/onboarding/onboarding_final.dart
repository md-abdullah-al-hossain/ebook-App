import 'package:ebook_app/source/common/theme/color_extenstion.dart';
import 'package:ebook_app/source/common/utils/mybutton.dart';
import 'package:flutter/material.dart';

class OnboaridngFinalScreen extends StatefulWidget {
  const OnboaridngFinalScreen({Key? key}) : super(key: key);

  @override
  State<OnboaridngFinalScreen> createState() => _OnboaridngFinalScreenState();
}

class _OnboaridngFinalScreenState extends State<OnboaridngFinalScreen> {
  @override
  Widget build(BuildContext context) {
    var responsive = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/img/welcome_bg.png',
              height: responsive.height,
              width: responsive.width,
              fit: BoxFit.cover,
            ),
            Container(
              width: responsive.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  children: [
                    SizedBox(height: responsive.height * 0.10),
                    Text(
                      'Book For\nEvery Taste',
                      style: TextStyle(
                        fontSize: 30,
                        color: TColor.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: responsive.height * 0.12),
                    MyButton(
                      text: 'Sign In',
                      height: 60, // Set a specific height for the button
                      color: TColor.primary,
                      textColor: Colors.white,
                      shape: 15, // Set the border radius for the button
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ), // Add your text style here
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: 'Sign Up',
                      height: 60, // Set a specific height for the button
                      color: TColor.primary,
                      textColor: Colors.white,
                      shape: 15, // Set the border radius for the button
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ), // Add your text style here
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}