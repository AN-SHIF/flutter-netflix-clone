import 'package:flutter/material.dart';

class VideoItemList extends StatelessWidget {
  final int index;
  const VideoItemList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(.35),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off_outlined,
                      size: 30,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-vector/portrait-boy-with-brown-hair-brown-eyes_1308-146018.jpg?w=360&t=st=1709572496~exp=1709573096~hmac=e87cdea7008fd7dbfa07f5b5ef2a1d2e7cfca62e9feb3490614efee6900550d9'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      StackIconWidget(
                        icon: Icons.emoji_emotions_outlined,
                        title: 'Lol',
                      ),
                      GapSizedBos(),
                      StackIconWidget(
                        icon: Icons.add,
                        title: 'My List',
                      ),
                      GapSizedBos(),
                      StackIconWidget(
                        size: 30,
                        angle: 5.9,
                        icon: Icons.send_sharp,
                        title: 'Share',
                      ),
                      GapSizedBos(),
                      StackIconWidget(
                          size: 55,
                          icon: Icons.play_arrow_rounded,
                          title: 'Play'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class StackIconWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double angle;
  final double size;
  const StackIconWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.angle = 0,
      this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: angle,
          child: Icon(
            icon,
            size: size,
            fill: .1,
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class GapSizedBos extends StatelessWidget {
  const GapSizedBos({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 18,
    );
  }
}
