import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
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
              children: const [
                Text(
                  'FEB',
                  style: TextStyle(fontSize: 16, color: kGreyColor),
                ),
                Text(
                  '11',
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
                const VideoWidget(image: kNewAndHotImage),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'TALL GIRL 2',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -2),
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
                const Text('Coming on Friday'),
                kHeight10,
                const Text(
                  'Tall Girl 2',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                const Text(
                  'Landing the lead in the school musical is a dream come true for Jodi, Until the presence sends her confidence--and her relationship--into a tailspin.',
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
