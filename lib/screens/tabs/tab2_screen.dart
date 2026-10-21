import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = [
      ('Themes - Primary Module', 'High priority tracking active', 'Ready'),
      ('Themes - Secondary Stream', 'Routine synchronization', 'Done'),
      ('Themes - Tertiary Flow', 'Standby for trigger', 'Waiting'),
      ('Themes - Archive Log', 'Historical weekly review', 'Archived'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Themes')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: items.map((it) => Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(it.$1, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    const SizedBox(height: 4),
                    Text(it.$2, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(color: AppTheme.primaryColor.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(8)),
                child: Text(it.$3, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ],
          ),
        )).toList(),
      ),
    );
  }
}

