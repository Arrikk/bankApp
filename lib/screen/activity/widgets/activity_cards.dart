import 'package:bank/screen/activity/widgets/mastercard.dart';
import 'package:flutter/material.dart';

class ActivityCards extends StatelessWidget {
  const ActivityCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (i) => Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 76,
              width: 340,
              decoration: BoxDecoration(
                color: (i % 2 == 0)
                    ? const Color.fromARGB(255, 18, 80, 98)
                    : Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "Smart Pay Cards",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "**** 9886",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    MasterCard()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
