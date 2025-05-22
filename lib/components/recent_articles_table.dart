import 'package:flutter/material.dart';

class RecentArticlesTable extends StatelessWidget {
  const RecentArticlesTable({Key? key}) : super(key: key);

  final List<Map<String, String>> articles = const [
    {
      'time': '12:04 PM',
      'title': 'Budget 2025: Major Tax Reforms Announced',
      'category': 'Politics',
      'sentiment': 'Neutral',
      'status': 'Done',
    },
    {
      'time': '11:20 AM',
      'title': 'Champions League Final: Shocking Upset',
      'category': 'Sports',
      'sentiment': 'Positive',
      'status': 'Done',
    },
    {
      'time': '10:45 AM',
      'title': 'Global Markets Hit by Recession Fears',
      'category': 'Finance',
      'sentiment': 'Negative',
      'status': 'Done',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Summarized Articles",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columnSpacing: 20,
            headingRowColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple.shade50),
            columns: const [
              DataColumn(label: Text('Timestamp')),
              DataColumn(label: Text('Article Title')),
              DataColumn(label: Text('Category')),
              DataColumn(label: Text('Sentiment')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('View')),
            ],
            rows: articles.map((article) {
              return DataRow(cells: [
                DataCell(Text(article['time']!)),
                DataCell(Text(article['title']!)),
                DataCell(Text(article['category']!)),
                DataCell(Text(article['sentiment']!)),
                DataCell(Text(article['status']!)),
                DataCell(
                  IconButton(
                    icon: const Icon(Icons.visibility),
                    tooltip: "View Summary",
                    onPressed: () {
                      _showArticleDetails(context, article);
                    },
                  ),
                ),
              ]);
            }).toList(),
          ),
        ),
      ],
    );
  }

  void _showArticleDetails(BuildContext context, Map<String, String> article) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(article['title'] ?? 'Article Summary'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("🕒 ${article['time']}"),
            Text("📂 Category: ${article['category']}"),
            Text("🧠 Sentiment: ${article['sentiment']}"),
            const SizedBox(height: 12),
            const Text("🔍 Summary:\nLorem ipsum dolor sit amet, consectetur adipiscing elit."),
            const SizedBox(height: 8),
            const Text("📄 Original:\nHere’s the original content preview..."),
          ],
        ),
        actions: [
          TextButton(child: const Text('Close'), onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
