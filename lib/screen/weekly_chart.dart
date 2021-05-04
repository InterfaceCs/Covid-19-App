import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: false,
              ),
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: getWeek,
                  textStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ))),
        ),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartData = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroupData = [];
  barChartData.asMap().forEach(
        (i, value) => barChartGroupData.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                y: value,
                //
                color: i == 4 ? Colors.purple : Colors.grey.withOpacity(0.5),
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroupData;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return "Mon";
    case 1:
      return "Tue";
    case 2:
      return "Wed";
    case 3:
      return "Thu";
    case 4:
      return "Fri";
    case 5:
      return "Sat";
    case 6:
      return "Sun";
    default:
      return "";
  }
}
