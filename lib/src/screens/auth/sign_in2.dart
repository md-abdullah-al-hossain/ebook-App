import 'package:ebook_app/src/common/theme/app_color/color_extenstion.dart';
import 'package:ebook_app/src/common/widgets/mybutton.dart';
import 'package:ebook_app/src/common/widgets/outline_buttobn.dart';
import 'package:ebook_app/src/common/widgets/round_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Signin2 extends StatefulWidget {
  TextEditingController textCode = TextEditingController();
  TextEditingController textPassword = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  bool isStay = false;
  Signin2({super.key});

  @override
  State<Signin2> createState() => _Signin2State();
}

class _Signin2State extends State<Signin2> {
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
                'Sign In',
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
                hintext: 'Username',
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
                hintext: 'Password',
                controller: widget.textPassword,
                keyboardType: null,
                obscureText: true,
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
              MyButton(
                text: 'Sign In',
                height: 60,
                color: TColor.primary,
                textColor: Colors.white,
                style: const TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
