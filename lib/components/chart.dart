import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

class Piechart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0.0,
              centerSpaceRadius: 70,
              sections: pieCharData)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: defaultPadding,
              ),
              Text("29.1",
                  style: TextStyle(
                      height: 0.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30)),
              Text(
                "of 128 GB",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ))
        ],
      ),
    );
  }

  List<PieChartSectionData> pieCharData = [
    PieChartSectionData(
        showTitle: false, value: 25.0, radius: 25.0, color: primaryColor),
    PieChartSectionData(
        showTitle: false, value: 20.0, radius: 22.0, color: Colors.amber),
    PieChartSectionData(
        showTitle: false, value: 15.0, radius: 19.0, color: Colors.cyan),
    PieChartSectionData(
        showTitle: false, value: 10.0, radius: 16.0, color: Colors.red),
    PieChartSectionData(
        showTitle: false,
        value: 25.0,
        radius: 13.0,
        color: primaryColor.withOpacity(0.1)),
  ];
}
