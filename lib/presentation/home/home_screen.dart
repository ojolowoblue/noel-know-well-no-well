import 'package:flutter/material.dart';
import 'package:noel_fintech_app/presentation/home/widgets/balance_summary.dart';
import 'package:noel_fintech_app/presentation/home/widgets/quick_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> buttonLabels = [
    "Transfer",
    "Exchange",
    "Payments",
    "Credits",
    "Deposits",
    "Plans",
    "Overdraft",
    "Security",
    "More",
  ];
  final List<IconData> buttonIcons = [
    Icons.compare_arrows_outlined,
    Icons.currency_yen,
    Icons.account_balance_wallet_rounded,
    Icons.credit_card,
    Icons.percent,
    Icons.card_giftcard,
    Icons.money,
    Icons.security,
    Icons.dashboard,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings_outlined,
            color: Colors.white,
            size: 24,
          ),
        ),
        // profile picture
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.black, Colors.green],
              ),
            ),
            child: const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage("assets/images/profile_pic.png"),
            ),
          ),
        ),
        actions: [
          // notifications
          Badge(
            backgroundColor: Colors.green,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const BalanceSummary(
            balance: "23,970.30",
            totalIn: "5,235.25",
            totalOut: "3,710.80",
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: List.generate(buttonLabels.length, (index) {
              return QuickActionButton(
                  buttonIcons: buttonIcons,
                  buttonLabels: buttonLabels,
                  index: index);
            }),
          ),
        ],
      ),
    );
  }
}
