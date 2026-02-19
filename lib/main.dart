import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tunemac/screens/main/home_screen.dart';
import 'package:tunemac/screens/main/play_screen.dart';
import 'package:tunemac/screens/main/profile_screen.dart';
import 'package:tunemac/screens/main/search_screen.dart';
import 'package:tunemac/screens/main/start_screen.dart';
import 'package:tunemac/screens/start/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(360, 896),
      builder: (context, child) => GetMaterialApp(
        title: 'tuneMac',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => Splash()),
          GetPage(name: '/start', page: () => StartScreen()),
          GetPage(name: '/search', page: () => SearchScreen()),
          GetPage(name: '/play', page: () => PlayScreen()),
          GetPage(name: '/profile', page: () => ProfileScreen()),
        ],
      ),
    );
  }
}

class AllControllers extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt catIndex = 0.obs;

  RxList screens = [
    HomeScreen(),
    SearchScreen(),
    PlayScreen(),
    ProfileScreen(),
  ].obs;
}
