import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

ValueNotifier<int> selectedindexnotifier = ValueNotifier(0);

class BottomnavigationWidget extends StatelessWidget {
  const BottomnavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedindexnotifier,
        builder: (BuildContext context, int newindex, Widget? _) {
          return BottomNavigationBar(
              currentIndex: newindex,
              onTap: (index) {
                selectedindexnotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: backGroundColor,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: 'Fast Laugh'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_circle_down_outlined),
                    label: 'Downloads'),
              ]);
        });
  }
}
