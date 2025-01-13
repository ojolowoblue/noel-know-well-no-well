import 'package:flutter/material.dart';

class BuildBalanceIndicator extends StatelessWidget {
  const BuildBalanceIndicator(
      {super.key, required this.value, required this.direction});

  final String value;
  final String direction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          direction == "up"
              ? Icons.arrow_drop_up_rounded
              : Icons.arrow_drop_down_rounded,
          color: direction == "up" ? Colors.green : Colors.red,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
