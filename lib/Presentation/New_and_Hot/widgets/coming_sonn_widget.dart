import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Home/widgets/main_view_container.dart';
import 'package:netflix/core/constants/constants.dart';

class ComingSoonWidgetListItem extends StatelessWidget {
  const ComingSoonWidgetListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 500,
          width: 50,
          child: Column(
            children: [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                '11',
                style: kfontstyle,
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              height: 500,
              width: size.width - 50,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VideoWidget(),
                  gapBox20,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bramayugam',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 35,
                            letterSpacing: -2,
                          ),
                        ),
                        const Spacer(),
                        MainViewContainerIcon(
                            textColor: kTextGrey,
                            iconSize: 25,
                            textSize: 14,
                            icon: Icons.notifications_none_rounded,
                            iconName: 'Remind Me'),
                        const SizedBox(
                          width: 18,
                        ),
                        MainViewContainerIcon(
                            textColor: kTextGrey,
                            iconSize: 25,
                            textSize: 14,
                            icon: Icons.info_outline_rounded,
                            iconName: 'Info'),
                        const SizedBox(
                          width: 18,
                        ),
                      ]),
                  Text('Coming on Friday'),
                  gapBox10,
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/4375011_logo_netflix_icon.png',
                        scale: 37,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          'Films',
                          style: TextStyle(fontSize: 11),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Bramayugam',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
                  ),
                  gapBox10,
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                        'In 17th century Malabar, Thevan and Koran escape the clutches of the Portuguese slave trade in Ponnani and flee to the east. At night, they camp at the banks of the Bharatappuzha River, but Koran is killed by a yakshi. Thevan runs away, discovering an abandoned mansion or mana in the morning.'),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 210,
          child: Image.network(
            comingSoonimg,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
            bottom: 28, right: 35, child: Icon(Icons.volume_off_rounded))
      ],
    );
  }
}
