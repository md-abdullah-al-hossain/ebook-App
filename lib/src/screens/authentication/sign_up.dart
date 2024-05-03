import 'package:ebook_app/src/themes/app_color/color_extenstion.dart';
import 'package:ebook_app/src/widgets/outline_buttobn.dart';
import 'package:ebook_app/src/widgets/round_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  TextEditingController textCode = TextEditingController();
  TextEditingController textPassword = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  bool isStay = false;
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: TColor.primary,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'Fast & Last Name',
                controller: widget.textCode,
                keyboardType: null,
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'Email',
                controller: widget.textEmail,
                keyboardType: null,
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'Mobaile Phone',
                controller: widget.textPassword,
                keyboardType: null,
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'Group Special Code (Optional)',
                controller: widget.textCode,
                keyboardType: null,
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'Password',
                controller: widget.textCode,
                keyboardType: null,
                obscureText: false,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          widget.isStay = !widget.isStay;
                        },
                      );
                    },
                    icon: Icon(
                      widget.isStay
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: widget.isStay
                          ? TColor.primary
                          : TColor.subTitle.withOpacity(0.3),
                    ),
                  ),
                  const Text(
                    'Please Sign up for mothly newsletter.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomOutlineButton(
                text: 'Sign Up',
                textColor: TColor.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
