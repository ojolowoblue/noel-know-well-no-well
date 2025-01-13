import 'package:flutter/material.dart';

// Quick Action class
class QuickAction {
  final String label;
  final IconData icon;

  QuickAction({required this.label, required this.icon});
}

final quickActions = [
  QuickAction(icon: Icons.compare_arrows_outlined, label: "Transfer"),
  QuickAction(icon: Icons.currency_yen, label: "Exchange"),
  QuickAction(icon: Icons.account_balance_wallet_rounded, label: "Payments"),
  QuickAction(icon: Icons.credit_card, label: "Credits"),
  QuickAction(icon: Icons.percent, label: "Deposits"),
  QuickAction(icon: Icons.card_giftcard, label: "Plans"),
  QuickAction(icon: Icons.money, label: "Overdraft"),
  QuickAction(icon: Icons.security, label: "Security"),
  QuickAction(icon: Icons.dashboard, label: "More"),
];
