import 'package:flutter/material.dart';
import 'package:noel_fintech_app/shared/widgets/app_button.dart';

class AuthEntry extends StatelessWidget {
  const AuthEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomLeft,
                radius: 0.4,
                colors: [
                  Color(0x4DFF375F), // 30% opacity (#FF375F)
                  Color(0x00FF375F), // 0% opacity (#FF375F)
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(1.0, 0.55),
                radius: 0.2,
                colors: [
                  Color(0x4D32D74B), // 30% opacity (#32D74B)
                  Color(0x0032D74B), // 0% opacity (#32D74B)
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-1.0, -0.7),
                radius: 0.2,
                colors: [
                  Color(0x4DFFD60A), // 30% opacity (#FFD60A)
                  Color(0x00FFD60A), // 0% opacity (#FFD60A)
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/onboarding/onboarding_2.png",
                    width: 216,
                    height: 249,
                  ),
                ),
                const Text(
                  "Welcome to your freedom.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppButton(
                  text: "Get Started",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
