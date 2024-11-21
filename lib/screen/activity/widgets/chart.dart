import 'package:bank/screen/activity/widgets/chart_data.dart';
import 'package:bank/screen/activity/widgets/time_option.dart';
import 'package:flutter/material.dart';

class ActivityChart extends StatelessWidget {
  const ActivityChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 350,
        width: double.maxFinite,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          children: [
            Text(
              "Total Spending",
              style: TextStyle(color: Colors.grey[500]!, fontSize: 17),
            ),
            const Text(
              "\$898,8348,234.43",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 10),
            const TimeOptionButtonRow(),
            const SizedBox(height: 10),
            const ChartData()
          ],
        ),
      ),
    );
  }
}
