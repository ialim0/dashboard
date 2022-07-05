import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 80,
              startDegreeOffset: -90,
              sections: paiChartSectionDatas,
            ),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                "45.7",
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.6,
                    ),
              ),
              Text("of 512GB")
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSectionDatas = [
  PieChartSectionData(
    value: 25,
    color: primaryColor,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 20,
    color: Color.fromARGB(255, 44, 137, 8),
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 10,
    color: Colors.redAccent,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 15,
    color: Colors.purpleAccent,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 10,
    color: Color.fromARGB(255, 156, 88, 12),
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 20,
    color: Color.fromARGB(255, 6, 14, 1),
    showTitle: false,
    radius: 25,
  ),
];
