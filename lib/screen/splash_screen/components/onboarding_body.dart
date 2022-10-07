import 'package:flutter/material.dart';
import 'package:taste_app/constants/colors.dart';
import 'package:taste_app/screen/splash_screen/components/onboarding_content.dart';
import '../../../components/custom_button_full.dart';
import '../../../models/onboarding_data.dart';
import '../../sign_in/sign_in_screen.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 7),
      duration: Duration(milliseconds: 400),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: currentPage == index ? mainOrange : textGray1,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, int index) => OnbardingContent(
                title: onboardingData[index].title,
                subTitle: onboardingData[index].subTitle,
                image: onboardingData[index].image,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (index) => dotIndicator(index),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonFull(
                    text: currentPage == onboardingData.length - 1
                        ? 'Get Started'
                        : 'Continue',
                    press: () {
                      currentPage == onboardingData.length - 1
                          ? Navigator.pushNamed(context, SignInScreen.routeName)
                          : _pageController.nextPage(
                              duration: Duration(
                                microseconds: 400,
                              ),
                              curve: Curves.easeInOut,
                            );
                    },
                    textBtnSize: 16,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
