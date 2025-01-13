import 'package:flutter/material.dart';
import 'package:noel_fintech_app/presentation/chat/chat_screen.dart';
import 'package:noel_fintech_app/presentation/home/home_screen.dart';
import 'package:noel_fintech_app/presentation/stats/stats_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const StatsScreen(),
    const ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.grey[900],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            buildBottomBarItem(
              isSelected: currentIndex == 0,
              icon: Icons.account_balance_outlined,
            ),
            buildBottomBarItem(
              isSelected: currentIndex == 1,
              icon: Icons.stacked_bar_chart_outlined,
            ),
            buildBottomBarItem(
              isSelected: currentIndex == 2,
              icon: Icons.chat_bubble_outline_sharp,
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomBarItem({
    required bool isSelected,
    required IconData icon,
  }) {
    return BottomNavigationBarItem(
        icon: Stack(alignment: Alignment.center, children: [
          Container(
            width: 107,
            height: 44,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: isSelected
                    ? [
                        const Color(0xffFFD60A),
                        const Color(0xff32D74B),
                      ]
                    : [Colors.transparent, Colors.transparent],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ]),
        label: "");
  }
}
