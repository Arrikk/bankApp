import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData extends StatelessWidget {
  const ChartData({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const titles = ["S", "M", "T", "W", "T", "F", "S"];
                  final index = value.toInt();
                  if (index >= 0 && index < titles.length) {
                    return Text(
                      titles[index],
                      style: const TextStyle(color: Colors.grey),
                    );
                  }
                  return const Text("");
                },
                reservedSize: 22,
                interval: 1,
              ),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 5),
                const FlSpot(1, 6),
                const FlSpot(2, 4),
                const FlSpot(3, 3),
                const FlSpot(4, 6),
                const FlSpot(5, 4),
                const FlSpot(6, 5),
              ],
              isCurved: true,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: Colors.teal.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
