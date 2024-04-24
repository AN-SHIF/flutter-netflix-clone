import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constants.dart';

class MainViewContainer extends StatelessWidget {
  const MainViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size * 0.73,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(mainviewimage),
            ),
          ),
        ),
        // Container(
        //   width: double.infinity,
        //   height: 90,
        //   color: Colors.black.withOpacity(1),
        // ),
        Container(
          width: double.infinity,
          height: 650,
          color: Colors.black.withOpacity(0.6),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const MainViewContainerIcon(icon: Icons.add, iconName: 'Play'),
              TextButton.icon(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 25,
                ),
                label: const Text(
                  'Play',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              const MainViewContainerIcon(
                  icon: Icons.info_rounded, iconName: 'Info')
            ],
          ),
        ),
      ],
    );
  }
}

class MainViewContainerIcon extends StatelessWidget {
  final IconData icon;
  final String iconName;
  final double iconSize;
  final double textSize;
  final Color textColor;
  final double angle;
  const MainViewContainerIcon(
      {super.key,
      required this.icon,
      required this.iconName,
      this.iconSize = 35,
      this.textSize = 14,
      this.angle = 0,
      this.textColor = kTextWhite});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Transform.rotate(
            angle: angle,
            child: Icon(
              icon,
              size: iconSize,
            ),
          ),
        ),
        Text(
          iconName,
          style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.bold,
              color: textColor),
        )
      ],
    );
  }
}
