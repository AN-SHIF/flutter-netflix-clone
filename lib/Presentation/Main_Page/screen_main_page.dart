import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Downloads/screen_downloads.dart';
import 'package:netflix/Presentation/Fast_laugh/fast_laugh.dart';
import 'package:netflix/Presentation/Home/screen_home.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/Bottom_Nav.dart';
import 'package:netflix/Presentation/New_and_Hot/screen_new_and_hot.dart';
import 'package:netflix/Presentation/Search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _screens = [
    ScreenHome(),
    screenNewandHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: selectedindexnotifier,
          builder: (BuildContext context, int newindex, Widget? _) {
            return _screens[newindex];
          }),
      bottomNavigationBar: const BottomnavigationWidget(),
    );
  }
}
