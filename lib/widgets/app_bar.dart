import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class appBarWidget extends StatelessWidget {
  const appBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colorwhite,
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 20,
            width: 20,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
