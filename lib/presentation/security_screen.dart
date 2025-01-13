import 'package:flutter/material.dart';
import 'package:noel_fintech_app/presentation/home/home_screen.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  final List<String> passcode = [];
  final int maxLength = 4;

  void onNumberPressed(String number) {
    if (passcode.length < maxLength) {
      setState(() {
        passcode.add(number);
      });

      if (passcode.length == maxLength) {
        validatePasscode();
      }
    }
  }

  void validatePasscode() {
    if (passcode.join() == "2002") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      // Optionally, show an error message or reset the passcode
      setState(() {
        passcode.clear();
      });
    }
  }

  void onBackspacePressed() {
    if (passcode.isNotEmpty) {
      setState(() {
        passcode.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Enter your passcode',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              buildPasscodeDots(),
              const SizedBox(
                height: 60,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 35,
                    childAspectRatio: 1,
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    if (index == 9) return buildFingerprintButton();
                    if (index == 11) return buildBackspaceButton();
                    return buildNumberButton(index == 10 ? 0 : index + 1);
                  }),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Forgot password?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNumberButton(int number) {
    return GestureDetector(
      onTap: () {
        onNumberPressed(number.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[900],
        ),
        child: Center(
          child: Text(
            '$number',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFingerprintButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: const Icon(
          Icons.fingerprint,
          size: 48,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildBackspaceButton() {
    return GestureDetector(
      onTap: () {
        onBackspacePressed();
      },
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: const Icon(
          Icons.backspace,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildPasscodeDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(maxLength, (index) {
        return Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index < passcode.length ? Colors.green : Colors.grey,
          ),
        );
      }),
    );
  }
}
