import 'package:bank/screen/topup/banks_model.dart';
import 'package:bank/screen/topup/widgets/payment_method.dart';
import 'package:flutter/material.dart';

class Others extends StatefulWidget {
  const Others({super.key});

  @override
  State<Others> createState() => OthersState();
}

class OthersState extends State<Others> {
  String currentValue = "google";
  late List<PaymentMethodModel> bankTransfer;

  @override
  void initState() {
    super.initState();
    bankTransfer = PaymentMethodModel().otherBanks(currentValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...bankTransfer.map((pm) {
          return PaymentMethod(
            image: pm.image!,
            title: pm.title!,
            subtitle: pm.subtitle!,
            isSelected: pm.nameid! == currentValue,
            onChange: (value) => {
              if (value == true)
                {
                  setState(() {
                    currentValue = pm.nameid!;
                  })
                }
            },
          );
        }),
      ],
    );
  }
}
