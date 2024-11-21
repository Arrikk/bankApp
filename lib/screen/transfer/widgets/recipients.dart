import 'package:bank/screen/transfer/recipients_model.dart';
import 'package:flutter/material.dart';

class Recipients extends StatelessWidget {
  Recipients({super.key});

  final List<Recipient> recipients = Recipient().recipients();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (itemBuilder, i) => recipient(recipients[i]),
          separatorBuilder: (ctx, i) => const SizedBox(width: 10),
          itemCount: recipients.length,
        ),
      ),
    );
  }
}

Widget recipient(Recipient recipient) {
  return Container(
    width: 130,
    // padding: EdgeInsets.only(top: 30),
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
        color: recipient.selected! ? Colors.teal : Colors.grey,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        recipient.selected!
            ? Transform.translate(
                offset: const Offset(40, 0),
                child: const Icon(
                  Icons.check_outlined,
                  color: Colors.teal,
                ),
              )
            : SizedBox(),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              recipient.image!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          recipient.name!,
          style: TextStyle(
            fontWeight: recipient.selected! ? FontWeight.bold : FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
