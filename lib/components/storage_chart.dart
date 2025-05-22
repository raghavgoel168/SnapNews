import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StorageChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Storage Details", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 200, child: PieChart(PieChartData(sections: [
              PieChartSectionData(color: Colors.blue, value: 1.3, title: "Documents"),
              PieChartSectionData(color: Colors.red, value: 15.13, title: "Media"),
              PieChartSectionData(color: Colors.yellow, value: 1.3, title: "Other"),
              PieChartSectionData(color: Colors.grey, value: 1.3, title: "Unknown"),
            ]))),
          ],
        ),
      ),
    );
  }
}
