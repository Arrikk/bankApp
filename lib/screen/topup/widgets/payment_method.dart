import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.isSelected,
      required this.onChange});

  final String image;
  final String title;
  final String subtitle;
  final bool isSelected;
  final ValueChanged<bool?> onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.grey,
          ),
          title: Text(title),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          subtitle: Text(subtitle),
          trailing: Transform.scale(
            scale: 1.2,
            child: Radio.adaptive(
                value: true, groupValue: isSelected, onChanged: onChange),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.grey.shade200, width: 2),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
