import 'package:flutter/material.dart';
import 'package:onboarding_screen/home_page.dart';
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

  // Keep track if we are on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const <Widget>[
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // skip button
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text("Skip"),
                  ),

                  // dot indicators
                  SmoothPageIndicator(controller: _controller, count: 3),

                  // next
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          },
                          child: const Text("Done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text("Next"),
                        ),
                ]))
      ]),
    );
  }
}
