import 'package:finca/core/colors_picker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data.dart';

class BarGraph extends StatelessWidget {
  BarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      40.41,
      53.50,
      42.42,
      10.50,
      100.02,
      88.99,
      90.10,
    ];

    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: double.infinity,
        height: 222,
        child: MyBarGraph(
          weeklySummary: weeklySummary,
        ),
      ),
    );
  }
}

class MyBarGraph extends StatelessWidget {
  final List weeklySummary; //[sunAmount , monAmount ...,satAmount]
  const MyBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    //initialize bar data
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initializeData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles:
                SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
          ),
        ),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: kfincaPinkBg,
                    width: 15,
                    borderRadius: BorderRadius.circular(4),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: kOffWhite,
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    const style =
        TextStyle(color: kBluegrey, fontWeight: FontWeight.bold, fontSize: 12);

    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text(
          'S',
          style: style,
        );
        break;
      case 1:
        text = const Text(
          'M',
          style: style,
        );
        break;
      case 2:
        text = const Text(
          'T',
          style: style,
        );
        break;
      case 3:
        text = const Text(
          'W',
          style: style,
        );
        break;
      case 4:
        text = const Text(
          'T',
          style: style,
        );
        break;
      case 5:
        text = const Text(
          'F',
          style: style,
        );
        break;
      case 6:
        text = const Text(
          'S',
          style: style,
        );
        break;
      default:
        text = const Text(
          '',
          style: style,
        );
        break;
    }
    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }
}
