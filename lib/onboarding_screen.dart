import 'package:flutter/material.dart';
import 'package:onboarding_screen/intro_pages/intro_page1.dart';
import 'package:onboarding_screen/intro_pages/intro_page2.dart';
import 'package:onboarding_screen/intro_pages/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller to keep track of page we are on
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        PageView(
          controller: _controller,
          children: const <Widget>[
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),

        // dot indicators
        Container(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(controller: _controller, count: 3))
      ]),
    );
  }
}
