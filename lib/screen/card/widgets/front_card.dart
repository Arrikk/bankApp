import 'package:flutter/material.dart';

class FrontCreditCard extends StatelessWidget {
  const FrontCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.maxFinite,
                color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Opacity(
                        opacity: 0.5,
                        child: Image.asset(
                          "assets/front.png",
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "assets/mastercard.png",
                            width: 60,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "9199 2266 6240 8304",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            "09/23",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Annabella Johnson",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
