import 'package:bank/screen/transfer/widgets/cards.dart';
import 'package:bank/screen/transfer/widgets/recipients.dart';
import 'package:bank/screen/transfer/widgets/search_field.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Transfer",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Choose card",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TransferCards(),
            const SizedBox(height: 15),
            const SearchField(),
            const SizedBox(height: 15),
            Recipients(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(double.maxFinite, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        //   ),
        // ),
      ),
    );
  }
}
