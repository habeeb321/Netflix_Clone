import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone_app/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_app/presentation/search/screen_search.dart';

class BottomNavigationWidgets extends StatelessWidget {
  BottomNavigationWidgets({super.key});

  List items = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    const ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 2,
      backgroundColor: backgroundColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections), label: 'New & Hot'),
        BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Dowloads'),
      ],
    );
  }
}
