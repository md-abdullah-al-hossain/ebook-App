import 'package:ebook_app/src/common/theme/app_color/color_extenstion.dart';
import 'package:ebook_app/src/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: TColor.primary,
        fontFamily: 'SF Pro Text',
      ),
      home: SignUp(),
    );
  }
}
