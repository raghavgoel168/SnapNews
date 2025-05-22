import 'package:flutter/material.dart';

class ModelApiMonitoring extends StatelessWidget {
  const ModelApiMonitoring({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> apiStats = const [
    {
      'title': 'Total API Calls',
      'value': '3,420',
      'icon': Icons.call_made,
      'color': Colors.blue
    },
    {
      'title': 'Avg. Response Time',
      'value': '1.2s',
      'icon': Icons.timer,
      'color': Colors.green
    },
    {
      'title': 'Error Rate',
      'value': '2.5%',
      'icon': Icons.error_outline,
      'color': Colors.red
    },
    {
      'title': 'Estimated API Cost',
      'value': '\$18.35',
      'icon': Icons.attach_money,
      'color': Colors.deepPurple
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Model & API Monitoring",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),

        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          physics: const NeverScrollableScrollPhysics(),
          children: apiStats.map((item) {
            return Container(
              decoration: BoxDecoration(
                color: item['color'].withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(item['icon'], size: 36, color: item['color']),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item['title'], style: const TextStyle(fontSize: 14)),
                        const SizedBox(height: 4),
                        Text(item['value'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: item['color'],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
