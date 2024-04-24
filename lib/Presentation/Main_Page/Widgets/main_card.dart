import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/main_title.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/movie_list_box.dart';

class MovieListItem extends StatelessWidget {
  final String title;
  const MovieListItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: MainTitle(title: title),
        ),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return const MoveListBox();
            }),
          ),
        ),
      ],
    );
  }
}
