import 'package:flutter/material.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: const Offset(13, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Opacity(
              opacity: 0.5,
              child: Container(
                height: 25,
                width: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Opacity(
            opacity: 0.5,
            child: Container(
              height: 25,
              width: 25,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
