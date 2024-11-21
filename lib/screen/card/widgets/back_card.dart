import 'package:flutter/material.dart';

class BackCreditCard extends StatelessWidget {
  const BackCreditCard({super.key});

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
                    Positioned.fill(
                      child: Opacity(
                        opacity: 0.5,
                        child: Image.asset(
                          "assets/line.png",
                          fit: BoxFit.cover,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/chip.png",
                            width: 70,
                            color: Colors.white,
                          ),
                          Image.asset(
                            "assets/wifi.png",
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      top: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          "9199 2266 6240 8304",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 18, 80, 98),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anabella Angela",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "09/23",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/visa.png",
                        width: 70,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
