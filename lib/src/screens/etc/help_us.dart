import 'package:ebook_app/src/themes/app_color/color_extenstion.dart';
import 'package:ebook_app/src/widgets/outline_buttobn.dart';
import 'package:ebook_app/src/widgets/round_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HelpUs extends StatefulWidget {
  final TextEditingController textCode = TextEditingController();
  final TextEditingController textPassword = TextEditingController();
  final textEmail = TextEditingController();
  final TextInputType? KeyboardType;

  HelpUs({super.key, required this.KeyboardType});

  @override
  State<HelpUs> createState() => _HelpUsState();
}

class _HelpUsState extends State<HelpUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Help Us Help You',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'It seems as this is your first time using our\napp,please enter your location so we can\nfilter our results and stock accordingly to\nyour local store.',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 145, 145, 145)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'If you choose toskip, you can change your location at any time in your account settings.',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 145, 145, 145)),
              ),
              const SizedBox(
                height: 30,
              ),
              RoundTextfield(
                hintext: 'State',
                controller: widget.textCode,
                keyboardType: widget.KeyboardType,
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'City',
                controller: widget.textCode,
                keyboardType: widget.KeyboardType,
                obscureText: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: TColor.primary,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
