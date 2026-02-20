// import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tunemac/screens/main/home_screen.dart';
import 'package:tunemac/screens/main/play_screen.dart';
import 'package:tunemac/screens/main/profile_screen.dart';
import 'package:tunemac/screens/main/search_screen.dart';

//GLOBAL CONSTANTS
//Call Resizable Height and Width
extension ContextExtensions on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

//START SCREEN
// - 1. THe Screens in the Bottom NavBar Stack
List bottomNavScreens = [
  HomeScreen(),
  SearchScreen(),
  PlayScreen(),
  ProfileScreen(),
];

// - 2. The Bottom Navigation Bar
List bottomNavIcons = [
  EvaIcons.homeOutline,
  EvaIcons.search,
  Icons.favorite_outline,
  EvaIcons.personOutline,
];

final Color tWhite1 = const Color.fromARGB(255, 196, 196, 196);
final Color tWhite2 = const Color.fromARGB(255, 222, 222, 222);
final Color tWhite3 = const Color.fromARGB(255, 239, 239, 239);

final Color tGreen1 = const Color.fromARGB(73, 167, 186, 100);
final Color tGreen3 = const Color.fromARGB(255, 211, 238, 59);

class ArtistesInfo {
  static List names = ['Davido', 'Wizkid', 'Awua', 'Hype', 'Horla'];
  static List songs = [
    'Ifunaya',
    'OloMaga',
    'We are the world',
    'You are mine',
    'She is good',
    'We love you',
    'Big Man',
    'She did it',
    'So you are worth',
    'Forever yours',
    'We are great',
  ];

  static List artLinks = [
    'assets/images/arts (1).jpg',
    'assets/images/arts (2).jpg',
    'assets/images/arts (3).jpg',
    'assets/images/arts (7).jpg',
    'assets/images/arts (8).jpg',
  ];

  static List names2 = ['Seyi Vibes', 'Dracula', 'Hola'];
  static List artLinks2 = [
    'assets/images/arts (4).jpg',
    'assets/images/arts (5).jpg',
    'assets/images/arts (6).jpg',
  ];
}

List homeCategories = ['All', 'Hip-hop', 'Blues', 'Fado', 'Gospel', 'Concert'];
List searchCategories = ['All', 'Genres', 'Playlist'];
List searchGenres = [
  'Afro',
  'Love',
  'Party',
  'Gospel',
  'Sad',
  'Hispanic Heritage Month',
  'Electronic',
  'Gym',
  'Faded',
  'Hip-Hop',
  'Chill',
  'Inspiration',
  'Carribean',
  'Country',
  'Focus',
  'Jazz',
  'Latin',
];
List searchImages = [
  'assets/images/nature (1).jpg',
  'assets/images/nature (2).jpg',
  'assets/images/nature (3).jpg',
  'assets/images/nature (4).jpg',
  'assets/images/nature (5).jpg',
  'assets/images/nature (6).jpg',
  'assets/images/nature (7).jpg',
  'assets/images/nature (8).jpg',
  'assets/images/nature (9).jpg',
  'assets/images/nature (1).jpg',
  'assets/images/nature (2).jpg',
  'assets/images/nature (3).jpg',
  'assets/images/nature (4).jpg',
  'assets/images/nature (5).jpg',
  'assets/images/nature (6).jpg',
  'assets/images/nature (7).jpg',
  'assets/images/nature (8).jpg',
  'assets/images/nature (9).jpg',
  'assets/images/nature (1).jpg',
  'assets/images/nature (2).jpg',
  'assets/images/nature (3).jpg',
  'assets/images/nature (4).jpg',
  'assets/images/nature (5).jpg',
  'assets/images/nature (6).jpg',
  'assets/images/nature (7).jpg',
  'assets/images/nature (8).jpg',
  'assets/images/nature (9).jpg',
];
