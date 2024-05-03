import 'package:ebook_app/src/themes/app_color/color_extenstion.dart';
import 'package:ebook_app/src/widgets/outline_buttobn.dart';
import 'package:ebook_app/src/widgets/round_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingIn extends StatefulWidget {
  TextEditingController textCode = TextEditingController();
  TextEditingController textPassword = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  bool isStay = false;
  SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
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
                hintext: 'Optional Group Special Code',
                controller: widget.textCode,
                keyboardType: null,
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextfield(
                hintext: 'Email Adress',
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.isStay = !widget.isStay;
                      });
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
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Your Password?',
                      style: TextStyle(
                        color: TColor.subTitle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomOutlineButton(
                text: 'Sign In',
                textColor: TColor.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
