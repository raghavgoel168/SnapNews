import 'package:flutter/material.dart';

class SettingsControlsSection extends StatefulWidget {
  const SettingsControlsSection({super.key});

  @override
  State<SettingsControlsSection> createState() => _SettingsControlsSectionState();
}

class _SettingsControlsSectionState extends State<SettingsControlsSection> {
  bool isScrapingEnabled = true;
  bool compareNewsSources = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("⚙️ Settings & Controls",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),

        // Scraping Frequency Toggle
        SwitchListTile(
          title: const Text("Enable Auto-Scraping"),
          subtitle: const Text("Toggle periodic scraping of news sources"),
          value: isScrapingEnabled,
          onChanged: (value) {
            setState(() {
              isScrapingEnabled = value;
            });
          },
        ),

        // News Source Comparison Toggle
        SwitchListTile(
          title: const Text("Compare with Other News Sources"),
          subtitle: const Text("Enable similarity checks across publishers"),
          value: compareNewsSources,
          onChanged: (value) {
            setState(() {
              compareNewsSources = value;
            });
          },
        ),

        const SizedBox(height: 12),

        // Clear Cache Button
        ElevatedButton.icon(
          icon: const Icon(Icons.delete_forever),
          label: const Text("Clear Cache"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Cache cleared successfully.")),
            );
          },
        ),

        const SizedBox(height: 8),

        // Re-summarize Button
        ElevatedButton.icon(
          icon: const Icon(Icons.refresh),
          label: const Text("Force Re-summarize All"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Re-summarization triggered.")),
            );
          },
        ),
      ],
    );
  }
}
