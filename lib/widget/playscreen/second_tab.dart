import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';

class SecondTab extends ConsumerWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ===== YOUR PLAYLISTS =====
          const Text(
            "Your Playlists",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 14),

          ...List.generate(6, (index) => _userPlaylistTile()),

          const SizedBox(height: 28),

          /// ===== TRENDING PLAYLISTS =====
          const Text(
            "Trending Globally",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 14),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => _playlistCard(),
            ),
          ),

          SizedBox(height: context.height * 0.12),
        ],
      ),
    );
  }
}

Widget _userPlaylistTile() {
  return Container(
    margin: const EdgeInsets.only(bottom: 14),
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.35),
      borderRadius: BorderRadius.circular(18),
    ),
    child: Row(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.queue_music, color: Colors.white),
        ),
        const SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Late Night Vibes", style: TextStyle(color: Colors.white)),
            SizedBox(height: 4),
            Text(
              "24 songs",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _playlistCard() {
  return Container(
    width: 150,
    margin: const EdgeInsets.only(right: 14),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.4),
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 85,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(height: 10),
        const Text("Top Afro Hits", style: TextStyle(color: Colors.white)),
        const Text(
          "1.2M followers",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    ),
  );
}
