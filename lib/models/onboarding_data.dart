import 'package:flutter/material.dart';

class OnboardingContent {
  final String title;
  final String subTitle;
  final String image;

  OnboardingContent({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<OnboardingContent> onboardingData = [
  OnboardingContent(
    title: "1000+ Foods to Eat\nBefore You Die",
    subTitle:
        "It's a pleasure to check off the foods you've eaten and to plan to try the ones you haven't yet enjoyed",
    image: "/images/onboarding/onboarding-1.png",
  ),
  OnboardingContent(
    title: "Create your own taste list",
    subTitle: "An epic to-do list, compiled over a lifetime of eating",
    image: "/images/onboarding/onboarding-2.png",
  ),
  OnboardingContent(
    title: "Share your experiences",
    subTitle: "Get inspired with people sharing the same goals",
    image: "/images/onboarding/onboarding-3.png",
  ),
  OnboardingContent(
    title: "Stories that inspire",
    subTitle:
        "A map to many of the great food experiences the world has to offer by others",
    image: "/images/onboarding/onboarding-4.png",
  ),
  OnboardingContent(
    title: "What are you waiting for?",
    subTitle: "Start achiveving your goals",
    image: "/images/onboarding/onboarding-5.png",
  ),
];
