import 'package:bank/screen/topup/banks_model.dart';
import 'package:bank/screen/topup/widgets/payment_method.dart';
import 'package:flutter/material.dart';

class Banks extends StatefulWidget {
  const Banks({super.key});

  @override
  State<Banks> createState() => _BanksState();
}

class _BanksState extends State<Banks> {
  String currentValue = "master";
  late List<PaymentMethodModel> bankTransfer;

  @override
  void initState() {
    super.initState();
    bankTransfer = PaymentMethodModel().bankTransfer(currentValue);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        ...bankTransfer.map((pm) {
          return PaymentMethod(
            image: pm.image!,
            title: pm.title!,
            subtitle: pm.subtitle!,
            isSelected: pm.nameid == currentValue,
            onChange: (value) => {
              if (value == true)
                {
                  setState(() {
                    debugPrint(pm.nameid);
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
