import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
   final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Text(
                  month,
                  style: TextStyle(fontSize: 16, color: kGreyColor),
                ),
                Text(
                  day,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width - 60,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 VideoWidget(url: posterPath),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Expanded(
                       child: Text(
                        movieName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2),
                                         ),
                     ),
                    Row(
                      children: const [
                        CustomButtonWidget(
                          title: 'Remind me',
                          icon: Icons.notifications_outlined,
                          iconSize: 20,
                          textSize: 11,
                        ),
                        kWidth10,
                        CustomButtonWidget(
                          title: 'Info',
                          icon: Icons.info_outline,
                          iconSize: 20,
                          textSize: 11,
                        ),
                        kWidth10,
                      ],
                    )
                  ],
                ),
                 Text('Coming $day $month'),
                kHeight10,
                 Text(
                  movieName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                 Text(
                  description,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: kGreyColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
