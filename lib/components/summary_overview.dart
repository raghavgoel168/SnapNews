import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SummaryOverview extends StatelessWidget {
  const SummaryOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Summary Overview",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: const [
            _StatCard(title: "Total Summarized", value: "1,204"),
            _StatCard(title: "Today’s Summaries", value: "24"),
            // _StatCard(title: "Weekly Summaries", value: "145"),
            // _StatCard(title: "Avg Summary Length", value: "130 words"),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _SentimentPieChart()),
            const SizedBox(width: 24),
            Expanded(child: _SummaryLineChart()),
          ],
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _SentimentPieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Sentiment Breakdown", style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(value: 45, color: Colors.green, title: 'Positive'),
                PieChartSectionData(value: 35, color: Colors.orange, title: 'Neutral'),
                PieChartSectionData(value: 20, color: Colors.red, title: 'Negative'),
              ],
              sectionsSpace: 4,
              centerSpaceRadius: 40,
            ),
          ),
        ),
      ],
    );
  }
}

class _SummaryLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Summaries Over Time", style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: false),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 5),
                    const FlSpot(1, 6),
                    const FlSpot(2, 4),
                    const FlSpot(3, 7),
                    const FlSpot(4, 6),
                    const FlSpot(5, 9),
                  ],
                  isCurved: true,
                  color: Colors.deepPurple,
                  barWidth: 3,
                  dotData: FlDotData(show: false),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
