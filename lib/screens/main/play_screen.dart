import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunemac/brain/constants.dart';
import 'package:tunemac/widget/playscreen/first_tab.dart';
import 'package:tunemac/widget/playscreen/third_tab.dart';
import 'package:tunemac/widget/shimmer/playscreen/second_tab_schimmer.dart';

class PlayScreen extends ConsumerWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: context.height * 0.88,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            SizedBox(height: context.height * 0.06),

            TabBar(
              labelColor: tGreen3,
              dividerColor: Colors.grey,
              indicatorColor: tGreen3,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 12),
              tabs: [
                Tab(
                  icon: Icon(EvaIcons.activity, size: 20),
                  text: 'Most Played',
                  height: 50,
                ),
                Tab(
                  icon: Icon(Icons.playlist_play_sharp, size: 18),
                  text: 'Fav Playlists',
                  height: 50,
                ),
                Tab(
                  icon: Icon(EvaIcons.barChart2, size: 18),
                  text: 'Recent Trends',
                  height: 50,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 1. FIRST PLAYLIST
                  FirstTab(),

                  // 2. SECOND PLAYLIST
                  SecondTabSchimmer(),

                  // 3. THIRD PLAYLIST
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
