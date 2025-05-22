import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/summary_overview.dart';
import 'components/recent_articles_table.dart';
import 'components/user_trends.dart';
import 'components/settings_controls.dart';
import 'components/top_keywords.dart';
import 'app_drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  Widget getScreen(int index) {
    switch (index) {
      case 0:
        return SummaryOverview();
      case 1:
        return RecentArticlesTable();
      case 2:
        return UserTrends();
      case 3:
        return SettingsControlsSection();
      default:
        return SummaryOverview();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnapNews')),
      drawer: AppDrawer(onSelect: (index) {
        setState(() {
          selectedIndex = index;
        });
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              const SizedBox(height: 20),

              getScreen(selectedIndex),
              // const TopKeywords(),
              const SizedBox(height: 20),

              // Remove Expanded – allow natural height
              // getScreen(selectedIndex),
              const TopKeywords(),
            ],
          ),
        ),
      ),
    );
  }
}

//dashboard
