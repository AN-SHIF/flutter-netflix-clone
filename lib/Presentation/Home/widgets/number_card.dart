import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 200,
              ),
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://akm-img-a-in.tosshub.com/indiatoday/styles/medium_crop_simple/public/2023-09/f6tsfwpa4aa_gtg.jpg?VersionId=3YZPKlG4indGck4QqrfIVfwDOiJQjaZM&size=750:*')),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Positioned(
            top: 60,
            child: BorderedText(
              strokeWidth: 10,
              strokeColor: Colors.white,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                    fontSize: 130,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
