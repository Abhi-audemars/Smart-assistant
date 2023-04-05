// ignore_for_file: use_build_context_synchronously

import 'package:allen/screens/home_page.dart';
import 'package:allen/screens/intropages/intro1.dart';
import 'package:allen/screens/intropages/intro2.dart';
import 'package:allen/screens/intropages/intro3.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController controller = PageController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() => isLastPage = value == 2);
            },
            controller: controller,
            children: const [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => controller.jumpToPage(2),
                  child: isLastPage == false
                      ? const Text(
                          'Skip',
                          style: TextStyle(color: Colors.white),
                        )
                      : const Text(''),
                ),
                isLastPage
                    ? OutlinedButton(
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool('showHome', true);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                              (route) => false);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.purple),
                        ),
                        child: const Text(
                          'Proceed',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    : SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        onDotClicked: (index) => controller.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        ),
                      ),
                isLastPage
                    ? const Text('')
                    : InkWell(
                        onTap: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
