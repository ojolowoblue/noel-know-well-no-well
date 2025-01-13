import 'package:flutter/material.dart';
import 'package:noel_fintech_app/presentation/home/widgets/build_balance_indicator.dart';

class BalanceSummary extends StatelessWidget {
  const BalanceSummary({
    super.key,
    required this.balance,
    required this.totalIn,
    required this.totalOut,
  });

  final String balance;
  final String totalIn;
  final String totalOut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total balance",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20,
            ),
          ),
          Text(
            "£ $balance",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "This month",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20,
            ),
          ),
          BuildBalanceIndicator(
            value: "£$totalIn",
            direction: "up",
          ),
          BuildBalanceIndicator(
            value: "£$totalOut",
            direction: "down",
          ),
        ],
      ),
    );
  }
}
