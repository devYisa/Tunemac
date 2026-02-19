import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunemac/constants.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: tGreen3,
            dividerColor: Colors.grey,
            indicatorColor: tGreen3,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 12.sp),
            tabs: [
              Tab(
                icon: Icon(Icons.five_g_sharp, size: 20.sp),
                text: 'Most Played',
                height: 50.sp,
              ),
              Tab(
                icon: Icon(Icons.playlist_play_sharp, size: 20.sp),
                text: 'Fav Playlists',
                height: 50.sp,
              ),
              Tab(
                icon: Icon(Icons.home, size: 20.sp),
                text: 'Recent Trends',
                height: 50.sp,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  height: 1.sh,
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
