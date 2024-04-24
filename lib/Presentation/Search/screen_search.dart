import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:movieflix/Presentation/Search/widgets/screen_idle_wodget.dart';
import 'package:netflix/Presentation/Search/widgets/screen_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey[850],
              borderRadius: BorderRadius.circular(10),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.white,
              ),
              style: const TextStyle(color: Colors.white),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //const Expanded(child: ScreenIdleWidget(),),
            const Expanded(child: ScreenSearchResult()),
          ],
        ),
      ),
    ));
  }
}
