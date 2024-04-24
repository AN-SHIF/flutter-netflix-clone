import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/widgets/title_text_widget.dart';

const imageurl =
    'https://www.pinkvilla.com/pics/245x350/2098366576_manjummel-boys-p_202402.jpg';

class ScreenSearchResult extends StatelessWidget {
  const ScreenSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(title: 'Movies & TV'),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.count(
              childAspectRatio: 1.08 / 1.6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: List.generate(21, (index) {
                return const MainCard();
              })),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageurl),
        ),
      ),
    );
  }
}
