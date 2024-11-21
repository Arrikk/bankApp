import 'package:bank/screen/activity/activity.dart';
import 'package:bank/screen/card/card.dart';
import 'package:bank/screen/home/home.dart';
import 'package:bank/screen/profile/profile.dart';
import 'package:bank/screen/scan/scan.dart';
import 'package:bank/screen/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fintech());
}

class Fintech extends StatelessWidget {
  const Fintech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fintech App",
      color: Colors.white,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 16, 80, 93)),
          useMaterial3: true),
      home: const _Main_Page(),
    );
  }
}

// ignore: camel_case_types
class _Main_Page extends StatefulWidget {
  const _Main_Page({super.key});

  @override
  State<_Main_Page> createState() => __Main_PageState();
}

// ignore: camel_case_types
class __Main_PageState extends State<_Main_Page> {
  int currentPage = 0;
  final List<Widget> pages = const [
    Home(),
    CardPage(),
    ProfilePage(),
    ScanPage(),
    ActivityPage()
  ];
  void updatePage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar:
          CustomButtomNavBar(callback: updatePage, selectedPage: currentPage),
    );
  }
}
