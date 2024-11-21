import 'package:flutter/material.dart';

class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar(
      {super.key, required this.callback, required this.selectedPage});

  final Function callback;
  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(33, 111, 111, 111),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigator(
            icon: Icons.house_outlined,
            text: "Home",
            callback: () => callback(0),
            selected: selectedPage == 0,
          ),
          BottomNavigator(
            icon: Icons.credit_card_rounded,
            text: "Card",
            callback: () => callback(1),
            selected: selectedPage == 1,
          ),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: const Color.fromARGB(255, 18, 80, 98),
            onPressed: () {
              callback(2);
            },
            child: const Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
            ),
          ),
          BottomNavigator(
            icon: Icons.person_outline,
            text: "Profile",
            callback: () => callback(3),
            selected: selectedPage == 3,
          ),
          BottomNavigator(
            icon: Icons.auto_graph,
            text: "Activity",
            callback: () => callback(4),
            selected: selectedPage == 4,
          ),
        ],
      ),
    );
  }
}

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    super.key,
    required this.icon,
    required this.text,
    required this.callback,
    this.selected = false,
  });

  final IconData icon;
  final String text;
  final bool selected;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      selectedIcon: Column(
        children: [
          Icon(
            icon,
            size: 24,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 10,
              color: Color.fromARGB(255, 12, 80, 98),
            ),
          ),
        ],
      ),
      onPressed: () => callback(),
      isSelected: selected,
      icon: Column(
        children: [Icon(icon), Text(text)],
      ),
    );
  }
}
