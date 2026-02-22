import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:go_router/go_router.dart';
import 'package:tunemac/screens/main/home_screen.dart';
import 'package:tunemac/screens/main/landing_screen.dart';
import 'package:tunemac/screens/main/play_screen.dart';
import 'package:tunemac/screens/main/profile_screen.dart';
import 'package:tunemac/screens/main/search_screen.dart';
import 'package:tunemac/screens/main/background_screen.dart';
import 'package:tunemac/screens/onboarding/splash.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'tuneMac',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/background',
        routes: [
          //Main Screens
          GoRoute(path: '/splash', builder: (_, _) => Splash()),
          GoRoute(path: '/background', builder: (_, _) => BackgroundScreen()),
          GoRoute(path: '/home', builder: (_, _) => HomeScreen()),
          GoRoute(path: '/search', builder: (_, _) => SearchScreen()),
          GoRoute(path: '/play', builder: (_, _) => PlayScreen()),
          GoRoute(path: '/profile', builder: (_, _) => ProfileScreen()),
          GoRoute(path: '/landing', builder: (_, _) => LandingScreen()),
        ],
      ),
    );
  }
}

// Controllers From Riverpod (BACKGROUND SCREEN)
class BackgroundState {
  final int categoryIndex;
  final int screenIndex;

  BackgroundState({this.categoryIndex = 0, this.screenIndex = 0});
  BackgroundState copyWith({int? categoryIndex, int? screenIndex}) =>
      BackgroundState(
        categoryIndex: categoryIndex ?? this.categoryIndex,
        screenIndex: screenIndex ?? this.screenIndex,
      );
}

class HomeNotifier extends StateNotifier<BackgroundState> {
  HomeNotifier() : super(BackgroundState());

  void changeCategoryIndex(int newIndex) {
    state = state.copyWith(categoryIndex: newIndex);
  }

  void changeScreenIndex(int newIndex) {
    state = state.copyWith(screenIndex: newIndex);
  }
}

final backgroundController =
    StateNotifierProvider<HomeNotifier, BackgroundState>(
      (ref) => HomeNotifier(),
    );
