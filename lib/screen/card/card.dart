import 'package:bank/screen/card/widgets/back_card.dart';
import 'package:bank/screen/card/widgets/front_card.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "My Cards",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const FrontCreditCard(),
              const SizedBox(height: 20),
              const BackCreditCard(),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  "Add Card",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 246, 246, 246),
                  fixedSize: const Size(double.maxFinite, 55),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 207, 207, 207),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
