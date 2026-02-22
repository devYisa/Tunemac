import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThirdTab extends ConsumerWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) => _trendCard(),
    );
  }
}

Widget _trendCard() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.35),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// IMAGE PLACEHOLDER
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
            child: Icon(Icons.trending_up, color: Colors.white, size: 40),
          ),
        ),

        const SizedBox(height: 14),

        /// HEADLINE
        const Text(
          "🎵 Drake Drops Surprise Album",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        /// DESCRIPTION
        const Text(
          "The new album features collaborations with top global artists and is already topping charts worldwide.",
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),

        const SizedBox(height: 12),

        /// META INFO
        Row(
          children: const [
            Icon(Icons.schedule, size: 14, color: Colors.grey),
            SizedBox(width: 6),
            Text(
              "2 hours ago",
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
            Spacer(),
            Text(
              "Music News",
              style: TextStyle(color: Colors.greenAccent, fontSize: 11),
            ),
          ],
        ),
      ],
    ),
  );
}
