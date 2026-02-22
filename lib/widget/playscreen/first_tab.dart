import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';
import 'package:tunemac/widget/playscreen/custom_plays.dart';

class FirstTab extends ConsumerWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ===== TOP TWO SECTIONS =====
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// RECENTS
              Expanded(
                child: CustomPlays(
                  title: "My Recent",
                  total: 8,
                  widget: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Blinding Lights",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    subtitle: Text(
                      "The Weeknd",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    dense: true,
                  ),
                ),
              ),

              VerticalDivider(color: Colors.black, width: 10),

              /// MOSTLY PLAYED (YOU)
              Expanded(
                child: CustomPlays(
                  title: "Mostly Played",
                  total: 8,
                  widget: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Starboy",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    subtitle: Text(
                      "The Weeknd • 124 plays",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    trailing: Icon(Icons.bar_chart, color: tGreen3, size: 18),
                    dense: true,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          /// ===== MOST PLAYED BY FRIENDS =====
          Text(
            "Most Played by Popular",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                width: 140,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(100),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Icon(Icons.music_note, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Calm Down",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Text(
                      "Rema • 2.4k plays",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: context.height * 0.12),
        ],
      ),
    );
  }
}
