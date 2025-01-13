import 'package:flutter/material.dart';

class QuickActionButton extends StatelessWidget {
  const QuickActionButton({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 100,
            height: 30,
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
