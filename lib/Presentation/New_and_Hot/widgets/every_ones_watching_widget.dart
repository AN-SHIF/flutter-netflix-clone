import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Home/widgets/main_view_container.dart';
import 'package:netflix/Presentation/New_and_Hot/widgets/coming_sonn_widget.dart';
import 'package:netflix/core/constants/constants.dart';

class EveryOnesWatcihngWidget extends StatelessWidget {
  const EveryOnesWatcihngWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bramayugam',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
        ),
        gapBox10,
        const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Text(
              'In 17th century Malabar, Thevan and Koran escape the clutches of the Portuguese slave trade in Ponnani and flee to the east. At night, they camp at the banks of the Bharatappuzha River, but Koran is killed by a yakshi. Thevan runs away, discovering an abandoned mansion or mana in the morning.'),
        ),
        gapBox20,
        const VideoWidget(),
        gapBox10,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
            ),
            Spacer(),
            MainViewContainerIcon(
                angle: 5.9,
                textColor: kTextGrey,
                iconSize: 30,
                textSize: 14,
                icon: Icons.send_sharp,
                iconName: 'Share'),
            SizedBox(
              width: 18,
            ),
            MainViewContainerIcon(
                textColor: kTextGrey,
                iconSize: 35,
                textSize: 14,
                icon: Icons.add,
                iconName: 'My List'),
            MainViewContainerIcon(
                textColor: kTextGrey,
                iconSize: 35,
                textSize: 14,
                icon: Icons.play_arrow,
                iconName: 'Play'),
          ],
        ),
        gapBox10,
        Row(
          children: [
            Image.asset(
              'lib/assets/4375011_logo_netflix_icon.png',
              scale: 37,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                'Films',
                style: TextStyle(fontSize: 11),
              ),
            )
          ],
        ),
      ],
    );
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
