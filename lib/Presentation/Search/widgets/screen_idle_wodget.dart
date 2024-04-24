import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/widgets/title_text_widget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';

const imageurl =
    'https://thesouthfirst.com/wp-content/uploads/2023/12/Manjummel-Boys-e1702101636227.jpg';

class ScreenIdleWidget extends StatelessWidget {
  const ScreenIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(
          title: 'Top Searches',
        ),
        gapBox20,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return const SrachItemTile();
              },
              separatorBuilder: (ctx, index) {
                return gapBox20;
              },
              itemCount: 10),
        )
      ],
    );
  }
}

class SrachItemTile extends StatelessWidget {
  const SrachItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.386,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: Text(
            'Manjummal Boys',
            style: TextStyle(
                color: textWcolor, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.play_circle_outline_rounded,
            size: 45,
          ),
        ),
      ],
    );
  }
}
