import 'package:bank/screen/activity/widgets/activity_cards.dart';
import 'package:bank/screen/activity/widgets/chart.dart';
import 'package:bank/screen/activity/widgets/mastercard.dart';
import 'package:bank/screen/activity/widgets/transactions.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Activity",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_outlined),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              ActivityCards(),
              SizedBox(height: 20),
              ActivityChart(),
              SizedBox(
                height: 10,
              ),
              ActivityTransactions()
            ],
          ),
        ),
      ),
    );
  }
}
