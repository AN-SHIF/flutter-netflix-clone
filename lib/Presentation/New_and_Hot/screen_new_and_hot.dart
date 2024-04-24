import 'package:flutter/material.dart';

import 'package:netflix/Presentation/New_and_Hot/widgets/coming_sonn_widget.dart';
import 'package:netflix/Presentation/New_and_Hot/widgets/every_ones_watching_widget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';

class screenNewandHot extends StatelessWidget {
  const screenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'New & Hot',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: kTextWhite),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cast,
                        color: Colorwhite,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.center,
              labelColor: Colors.black,
              // indicatorWeight: 15,
              unselectedLabelColor: Colors.white,
              dividerColor: Colors.transparent,
              tabs: const [
                TabBarwidget(
                  tabname: '🍿 Coming Soon',
                ),
                TabBarwidget(
                  tabname: '👀 Every one\'s Watching',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildViewComingSoon(),
            _buildViewEveryonesWtching(),
          ],
        ),
      ),
    );
  }

  Widget _buildViewComingSoon() {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              gapBox10,
              ComingSoonWidgetListItem(),
            ],
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return gapBox10;
        },
        itemCount: 10);
  }

  _buildViewEveryonesWtching() {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return const Column(
            children: [gapBox20, EveryOnesWatcihngWidget()],
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return const SizedBox(
            height: 0.1,
          );
        },
        itemCount: 10);
  }
}

class TabBarwidget extends StatelessWidget {
  final String tabname;
  const TabBarwidget({super.key, required this.tabname});

  @override
  Widget build(BuildContext context) {
    return Text(
      tabname,
      style: const TextStyle(fontSize: 15),
    );
  }
}
