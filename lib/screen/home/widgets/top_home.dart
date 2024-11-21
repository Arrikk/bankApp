import 'package:flutter/material.dart';

class TopHomeScreen extends StatelessWidget {
  const TopHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Anabella Angella",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: .3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                    splashRadius: 10,
                  ),
                  Positioned(
                    top: 10,
                    right: 15,
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
