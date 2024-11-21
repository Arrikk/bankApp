import 'package:bank/screen/topup/topup.dart';
import 'package:bank/screen/transfer/transfer.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(43, 180, 180, 180),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton(
              icon: Icons.account_balance,
              label: "Deposit",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => const TopupPage()),
                );
              },
            ),
            ActionButton(
              icon: Icons.swap_horiz,
              label: "Transfer",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transfer()),
                );
              },
            ),
            const ActionButton(
              icon: Icons.attach_money,
              label: "Withdraw",
            ),
            const ActionButton(
              icon: Icons.more,
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(
      {super.key, required this.icon, required this.label, this.callback});

  final IconData icon;
  final String label;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton.outlined(
          onPressed: callback,
          icon: Icon(icon),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
