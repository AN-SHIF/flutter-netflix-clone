import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/widgets/app_bar.dart';

final widgetList = [
  const SectionTop(),
  SectionCentre(),
  const SectionBottom(),
];

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
              child: appBarWidget(
            title: 'Downloads',
          ))),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => widgetList[index],
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: widgetList.length,
      ),
    );
  }
}

class SectionTop extends StatelessWidget {
  const SectionTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.settings),
        SizedBox(
          width: 10,
        ),
        Text('Smart Downloads'),
      ],
    );
  }
}

class SectionCentre extends StatelessWidget {
  SectionCentre({super.key});

  final moviePosters = [
    'https://media-cache.cinematerial.com/p/500x/rsya6mfr/manjummel-boys-indian-movie-poster.jpg?v=1708679289',
    'https://media-cache.cinematerial.com/p/500x/r6oixf0j/premalu-indian-movie-poster.jpg?v=1708680123',
    'https://media-cache.cinematerial.com/p/500x/dx2rfqoi/bramayugam-french-movie-poster.jpg?v=1707468205',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads For You',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'We\'ll download a personalised selection of\n movies and shows for you, so there\'s\n always something to watch on your\n device',
          textAlign: TextAlign.center,
          maxLines: 5,
          style: TextStyle(color: greyCOlor),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(alignment: Alignment.center, children: [
            const Center(
              child: CircleAvatar(
                backgroundColor: greyCOlor,
                radius: 150,
              ),
            ),
            ImageDownloads(
              angle: 10,
              moviePosters: moviePosters[0],
              margin: const EdgeInsets.only(left: 160),
            ),
            ImageDownloads(
              angle: -8,
              moviePosters: moviePosters[1],
              margin: const EdgeInsets.only(right: 160),
            ),
            ImageDownloads(
              moviePosters: moviePosters[2],
              margin: EdgeInsets.zero,
            ),
          ]),
          //color: Colors.white,
        ),
      ],
    );
  }
}

class SectionBottom extends StatelessWidget {
  const SectionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              height: 35,
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Set Up',
                style: TextStyle(
                    color: Colorwhite,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              color: Colorwhite,
              onPressed: () {},
              child: const Text(
                'See What You Can Download',
                style: TextStyle(
                    color: backGroundColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ImageDownloads extends StatelessWidget {
  const ImageDownloads(
      {super.key,
      required this.moviePosters,
      this.angle = 0,
      required this.margin,
      this.radius = 5});

  final String moviePosters;
  final double angle;
  final EdgeInsets margin;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(

            //color: Colors.black,
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(moviePosters))),
        width: size.width * 0.40,
        height: size.width * 0.50,
      ),
    );
  }
}
