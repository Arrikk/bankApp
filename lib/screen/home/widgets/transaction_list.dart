import 'dart:ffi';

import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today, 27 Oct",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 117, 117, 117),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "All Transactions",
                          style: TextStyle(
                            color: Color.fromARGB(255, 117, 117, 117),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Color.fromARGB(255, 14, 120, 187),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transaction(
            icon: Icons.fitness_center_sharp,
            iconColor: Color.fromARGB(255, 112, 11, 149),
            amount: "50.89",
            title: "Fitness Membership",
            subtitle: "Payment",
            debit: true,
          ),
          Transaction(
            icon: Icons.account_balance_rounded,
            iconColor: Color.fromARGB(255, 11, 149, 48),
            amount: "989.00",
            title: "Bank of America",
            subtitle: "Deposit",
            debit: false,
          ),
          Transaction(
            icon: Icons.send,
            iconColor: Color.fromARGB(255, 149, 78, 11),
            amount: "20.53",
            title: "Brilliant Ford",
            subtitle: "Payment",
            debit: true,
          ),
          Transaction(
            icon: Icons.cake_rounded,
            iconColor: Color.fromARGB(255, 11, 32, 149),
            amount: "150.89",
            title: "Birthday",
            subtitle: "Payment",
            debit: false,
          ),
        ],
      ),
    );
  }
}

class Transaction extends StatelessWidget {
  const Transaction({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.amount,
    required this.iconColor,
    required this.debit,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final String amount;
  final bool debit;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 239, 243, 245),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        debit ? "-\$$amount" : "+\$$amount",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: debit
              ? const Color.fromARGB(255, 178, 78, 78)
              : const Color.fromARGB(255, 98, 155, 67),
        ),
      ),
    );
  }
}
