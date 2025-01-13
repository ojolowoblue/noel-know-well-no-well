import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  BuildCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryDate,
      this.isHalfCard = false});

  final String balance;
  final String cardNumber;
  final String expiryDate;
  bool isHalfCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        width: isHalfCard ? MediaQuery.of(context).size.width * 0.6 : null,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Colors.green,
              Colors.yellow,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Main Card",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(cardNumber),
                  Text(expiryDate),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(balance),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
