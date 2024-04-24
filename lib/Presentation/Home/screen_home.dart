// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/Presentation/Home/widgets/main_view_container.dart';
import 'package:netflix/Presentation/Home/widgets/number_card.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/gap_15.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/main_card.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/main_title.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
//import 'package:movieflix/Presentation/Main_Page/Widgets/movie_list_box.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  ValueNotifier<bool> scrollNotofier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: scrollNotofier,
              builder: (BuildContext context, index, Widget? _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    if (direction == ScrollDirection.reverse) {
                      scrollNotofier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollNotofier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(shrinkWrap: true, children: const [
                        MainViewContainer(),
                        Gap15(),
                        MovieListItem(
                          title: 'Released in the past Year',
                        ),
                        Gap15(),
                        MovieListItem(title: 'Trending Now'),
                        Gap15(),
                        NumberTitleCard(),
                        MovieListItem(title: 'Tense Dramas'),
                        Gap15(),
                        MovieListItem(title: 'Dramas'),
                      ]),
                      scrollNotofier.value == true
                          ? const AppViewBar()
                          : gapBox20,
                    ],
                  ),
                );
              })),
    );
  }
}

class AppViewBar extends StatelessWidget {
  const AppViewBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      child: Container(
        width: double.infinity,
        height: 95,
        color: Colors.black.withOpacity(.4),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                  child: ImageIcon(
                    AssetImage(
                      'lib/assets/4375011_logo_netflix_icon.png',
                    ),
                    size: 35,
                    color: Colors.red,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cast,
                      color: Colorwhite,
                    )),
                const SizedBox(
                  width: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'TV Shows',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text('Movies',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                Text('categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(2.0),
          child: MainTitle(title: 'Top 10 TV Shows in India Today'),
        ),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return Stack(
                children: [
                  NumberCard(
                    index: index,
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
