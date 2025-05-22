import 'package:flutter/material.dart';

class FeedbackFlagsSection extends StatelessWidget {
  const FeedbackFlagsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> feedbacks = [
      {
        'title': 'Budget 2025 Analysis',
        'tags': ['Inaccurate', 'Too short'],
        'time': 'Today 11:02 AM',
        'status': 'Pending',
      },
      {
        'title': 'Elections 2025 Forecast',
        'tags': ['Biased'],
        'time': 'Yesterday 5:33 PM',
        'status': 'Reviewed',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("🚩 Feedback / Flags",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          itemCount: feedbacks.length,
          itemBuilder: (context, index) {
            final feedback = feedbacks[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                title: Text(feedback['title'],
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Time: ${feedback['time']}"),
                    Wrap(
                      spacing: 6,
                      children: feedback['tags']
                          .map<Widget>((tag) => Chip(
                        label: Text(tag),
                        backgroundColor: Colors.orange[100],
                      ))
                          .toList(),
                    ),
                  ],
                ),
                trailing: Wrap(
                  spacing: 6,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.check_circle, color: Colors.green),
                      tooltip: 'Approve',
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.autorenew, color: Colors.blue),
                      tooltip: 'Retrain',
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      tooltip: 'Delete',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
