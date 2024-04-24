import 'package:flutter/material.dart';

class MoveListBox extends StatelessWidget {
  const MoveListBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://akm-img-a-in.tosshub.com/indiatoday/styles/medium_crop_simple/public/2023-09/f6tsfwpa4aa_gtg.jpg?VersionId=3YZPKlG4indGck4QqrfIVfwDOiJQjaZM&size=750:*')),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
