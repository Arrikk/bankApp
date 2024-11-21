import 'package:bank/screen/home/widgets/action_buttons.dart';
import 'package:bank/screen/home/widgets/credit_card.dart';
import 'package:bank/screen/home/widgets/top_home.dart';
import 'package:bank/screen/home/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 80, 93),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopHomeScreen(),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 175),
                    color: Colors.white,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        ActionButtons(),
                        SizedBox(
                          height: 10,
                        ),
                        TransactionList()
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}