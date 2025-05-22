import 'package:flutter/material.dart';

class SummaryCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cards = [
      {'title': 'Documents', 'files': '1328 Files', 'size': '1.9GB'},
      {'title': 'Google Drive', 'files': '1328 Files', 'size': '2.9GB'},
      {'title': 'One Drive', 'files': '1328 Files', 'size': '1GB'},
      {'title': 'Documents', 'files': '5328 Files', 'size': '7.3GB'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: cards.map((card) {
        return Expanded(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(card['title']!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(card['files']!),
                  Text(card['size']!),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
