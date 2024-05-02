import 'package:flutter/material.dart';
import 'package:ebook_app/source/screen/onboarding/component/onboard_items.dart';
import 'package:ebook_app/source/common/theme/color_extenstion.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var responsive = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: onbaoardItems.length,
              itemBuilder: (context, index) {
                var onboard = onbaoardItems[index];
                return Container(
                  width: responsive.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 50,
                    ),
                    child: Column(
                      children: [
                        Text(
                          onboard["title"].toString(),
                          style: TextStyle(
                            fontSize: 30,
                            color: TColor.primary,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          onboard["sub_title"].toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: TColor.primaryLight,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: responsive.width * 0.10,
                        ),
                        Image.asset(
                          onboard["img"].toString(),
                          width: responsive.width * 0.8,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Positioned(
              left: 180,
              right: 0,
              bottom: 200,
              child: SmoothPageIndicator(
                controller: controller!,
                count: onbaoardItems.length,
                effect: WormEffect(
                  dotColor: TColor.primaryLight,
                  activeDotColor: TColor.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
