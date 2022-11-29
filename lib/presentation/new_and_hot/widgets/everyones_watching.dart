import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
 final String posterPath;
  final String movieName;
  final String description;
  const EveryonesWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
         Text(
          movieName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight10,
         Text(
          description,
          style: TextStyle(fontWeight: FontWeight.bold, color: kGreyColor),
        ),
        kHeight50,
         VideoWidget(url: posterPath),
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
