import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';

class PlayScreen extends ConsumerWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: tGreen3,
            dividerColor: Colors.grey,
            indicatorColor: tGreen3,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 12),
            tabs: [
              Tab(
                icon: Icon(Icons.five_g_sharp, size: 20),
                text: 'Most Played',
                height: 50,
              ),
              Tab(
                icon: Icon(Icons.playlist_play_sharp, size: 20),
                text: 'Fav Playlists',
                height: 50,
              ),
              Tab(
                icon: Icon(Icons.home, size: 20),
                text: 'Recent Trends',
                height: 50,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  height: 1,
                  color: Colors.blue,

                  child: Column(
                    children: [...List.generate(10, (index) => Text('Hi'))],
                  ),
                ),
                Text('Hi', style: TextStyle(color: Colors.white)),
                Text('Hi', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
