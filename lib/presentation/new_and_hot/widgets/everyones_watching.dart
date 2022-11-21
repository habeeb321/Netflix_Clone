import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight10,
        const Text(
          'This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work, life and love in 1990s Manhattan.',
          style: TextStyle(fontWeight: FontWeight.bold, color: kGreyColor),
        ),
        kHeight50,
        const VideoWidget(image: kNewAndHotImage2),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              title: 'Share',
              icon: Icons.share,
              iconSize: 25,
              textSize: 15,
            ),
            kWidth10,
            CustomButtonWidget(
              title: 'My List',
              icon: Icons.add,
              iconSize: 25,
              textSize: 15,
            ),
            kWidth10,
            CustomButtonWidget(
              title: 'Play',
              icon: Icons.play_arrow,
              iconSize: 25,
              textSize: 15,
            ),
            kWidth10,
          ],
        ),
      ],
    );
  }
}
