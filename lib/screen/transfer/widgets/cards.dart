import 'package:flutter/material.dart';
import 'package:bank/screen/card/widgets/back_card.dart';
import 'package:bank/screen/card/widgets/front_card.dart';

class TransferCards extends StatelessWidget {
  const TransferCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 330,
              height: 230,
              child:
                  i % 2 == 0 ? const FrontCreditCard() : const BackCreditCard(),
            ),
          ),
        ),
      ),
    );
  }
}
