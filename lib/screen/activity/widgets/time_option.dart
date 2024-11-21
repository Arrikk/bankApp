import 'package:flutter/material.dart';

class TimeOptionButton extends StatelessWidget {
  const TimeOptionButton(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.grey[100]! : Colors.transparent,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.teal : Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class TimeOptionButtonRow extends StatefulWidget {
  const TimeOptionButtonRow({super.key});

  @override
  State<TimeOptionButtonRow> createState() => _TimeOptionButtonRowState();
}

class _TimeOptionButtonRowState extends State<TimeOptionButtonRow> {
  String currentPeriod = "Month";
  final List<String> periods = ["Year", "Month", "Week", "Day"];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: periods.map((period) {
        return TimeOptionButton(
          isSelected: currentPeriod == period,
          label: period,
          onTap: () => setState(() {
            currentPeriod = period;
          }),
        );
      }).toList(),
    );
  }
}
