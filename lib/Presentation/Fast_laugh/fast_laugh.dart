import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Fast_laugh/widgets/video_container_items.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(10, (index) {
              return VideoItemList(index: index);
            })),
      ),
    );
  }
}
