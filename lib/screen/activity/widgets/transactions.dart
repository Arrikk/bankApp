import 'package:bank/screen/home/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class ActivityTransactions extends StatelessWidget {
  const ActivityTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                "Transactions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      color: Color.fromARGB(255, 117, 117, 117),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color.fromARGB(255, 14, 120, 187),
                  ),
                ],
              ),
            ],
          ),
        ),
        Transaction(
            title: "Smart Pay Ui Kit",
            subtitle: "Ui8.net",
            icon: Icons.adjust_rounded,
            amount: "23.4",
            iconColor: Color.fromARGB(255, 49, 49, 136),
            debit: false),
        Transaction(
            title: "Zenar UI Kit",
            subtitle: "Zenar.app",
            icon: Icons.ads_click_sharp,
            amount: "23.4",
            iconColor: Color.fromARGB(255, 49, 136, 56),
            debit: false),
      ],
      // ),
    );
  }
}
