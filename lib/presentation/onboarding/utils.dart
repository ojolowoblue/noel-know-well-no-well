import 'package:flutter/material.dart';

class Screen {
  const Screen({
    required this.title,
    required this.description,
    required this.image,
    required this.icon,
  });

  final String title;
  final String description;
  final String image;
  final IconData icon;
}

const List<Screen> screens = [
  Screen(
    title: "Bank",
    description:
        "Get  monthly free transfer, a free debit card & smarter budgeting.",
    image: "assets/images/onboarding/onboarding_1.png",
    icon: Icons.home,
  ),
  Screen(
    title: "Save",
    description:
        "Earn more interest on your saving & save automatically when you spend.",
    image: "assets/images/onboarding/onboarding_2.png",
    icon: Icons.save,
  ),
  Screen(
    title: "Overdraft",
    description: "Get instant overdraft when you use your card actively",
    image: "assets/images/onboarding/onboarding_1.png",
    icon: Icons.credit_card,
  ),
];
