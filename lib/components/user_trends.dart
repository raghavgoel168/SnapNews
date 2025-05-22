import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class UserTrends extends StatelessWidget {
   UserTrends({super.key});

  final List<Map<String, dynamic>> trends = const [
    {
      'label': 'Politics',
      'count': 1340,
    },
    {
      'label': 'Sports',
      'count': 920,
    },
    {
      'label': 'Tech',
      'count': 710,
    },
    {
      'label': 'Entertainment',
      'count': 480,
    },
    {
      'label': 'Finance',
      'count': 310,
    },
  ];

  final List<BarChartGroupData> barGroups =  [
    BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 20, color: Colors.blue)]),
    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 35, color: Colors.green)]),
    BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 25, color: Colors.orange)]),
    BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 15, color: Colors.purple)]),
    BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 10, color: Colors.red)]),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("User Interaction Trends", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),

        const Text("Most Requested Article Types", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Column(
          children: trends.map((item) {
            return ListTile(
              leading: const Icon(Icons.article),
              title: Text(item['label']),
              trailing: Text('${item['count']} requests'),
            );
          }).toList(),
        ),

        const SizedBox(height: 24),
        const Text("Summary Share & Download Trends", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 200, child: ShareDownloadBarChart()),

        const SizedBox(height: 24),
        const Text("Geo-based Summary Stats", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text("🌍 India: 60%  | 🇺🇸 US: 25%  | 🇬🇧 UK: 10%  | Others: 5%")
      ],
    );
  }
}

class ShareDownloadBarChart extends StatelessWidget {
  const ShareDownloadBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 40,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true, reservedSize: 28),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                switch (value.toInt()) {
                  case 0:
                    return const Text("Mon");
                  case 1:
                    return const Text("Tue");
                  case 2:
                    return const Text("Wed");
                  case 3:
                    return const Text("Thu");
                  case 4:
                    return const Text("Fri");
                  default:
                    return const Text("");
                }
              },
            ),
          ),
        ),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 20, color: Colors.indigo)]),
          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 35, color: Colors.indigo)]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 25, color: Colors.indigo)]),
          BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 30, color: Colors.indigo)]),
          BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 15, color: Colors.indigo)]),
        ],
      ),
    );
  }
}
